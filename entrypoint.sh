#!/bin/sh -e

export GITHUB_TOKEN="$1"
export GITHUB_APP_SLUG="$2"
export GITHUB_USER_ID="$3"

export GITHUB_USER_NAME="${GITHUB_APP_SLUG}"[bot]
export GITHUB_USER_EMAIL="${GITHUB_USER_ID}"+"${GITHUB_APP_SLUG}"[bot]@users.noreply.github.com

# Describe dependencies (for debugging Docker)
git --version
thrift --version

# Git setup
git config --global credential.helper "/bin/bash /credential-helper.sh"
git config --global user.email "$GITHUB_USER_EMAIL"

# Clone repos and obtain Ophan commit sha
git clone https://github.com/guardian/ophan.git
git clone https://github.com/guardian/ophan-thrift-swift.git
OPHAN_COMMIT_SHA=$(cd ophan && git log --format="%H" -n 1)

# Generate Swift Files (these will be output into gen-swift folder)
echo "Generating Swift code..."
thrift --gen swift -r ophan/event-model/src/main/thrift/nativeapp.thrift

# Replace old .swift files with new .swift files
echo "Replacing old Swift code..."
rm ophan-thrift-swift/Sources/OphanThrift/*.swift
cp gen-swift/* ophan-thrift-swift/Sources/OphanThrift

cd ophan-thrift-swift
if [ -n "$(git status --porcelain)" ]; then
  echo "Swift Package needs to be updated..."
  # Commit changes
  git add Sources/OphanThrift/*.swift
  git commit -m "Update Swift models based on https://github.com/guardian/ophan/tree/$OPHAN_COMMIT_SHA"

  # Tag the new version
  CURRENT_FULL_VERSION="$(git describe --tags --abbrev=0)"
  echo "Current full version is $CURRENT_FULL_VERSION"

  CURRENT_MAJOR_VERSION="$(echo $CURRENT_FULL_VERSION | cut -d . -f1)"
  CURRENT_MINOR_VERSION="$(echo $CURRENT_FULL_VERSION | cut -d . -f2)"
  NEW_FULL_VERSION="$CURRENT_MAJOR_VERSION.$(expr $CURRENT_MINOR_VERSION + 1).0"
  echo "New full version is $NEW_FULL_VERSION"

  git tag $NEW_FULL_VERSION

  # Push the changes (and tags)
  git push -u origin master
  git push --tags
else
  echo "Swift Package does not need to be updated, skipping commit/release steps..."
fi
