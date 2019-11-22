#!/bin/sh -e

# Describe dependencies (for debugging Docker)
git --version
thrift --version

# Git setup
export ACCESS_TOKEN=$1
git config --global credential.helper "/bin/bash /credential-helper.sh"
git config --global user.email '<>'

# Clone repos
git clone https://github.com/guardian/ophan.git
git clone https://github.com/guardian/ophan-thrift-swift.git

# Generate Swift Files (these will be output into gen-swift folder)
thrift --gen swift -r ophan/event-model/src/main/thrift/nativeapp.thrift

# Replace old .swift files with new .swift files
rm ophan-thrift-swift/Sources/OphanThrift/*.swift
cp gen-swift/* ophan-thrift-swift/Sources/OphanThrift

# Commit changes
cd ophan-thrift-swift
git add Sources/OphanThrift/*.swift
git commit -m "Update Swift models"

# Tag the new version
CURRENT_FULL_VERSION="$(git describe --tags --abbrev=0)"
echo "Current full version is $CURRENT_FULL_VERSION"
CURRENT_MINOR_VERSION="$(echo $CURRENT_FULL_VERSION | cut -d . -f2)"
echo "Current minor version is $CURRENT_MINOR_VERSION"
NEW_FULL_VERSION="0.$(expr $CURRENT_MINOR_VERSION + 1).0"
echo "New full version is $NEW_FULL_VERSION"
git tag $NEW_FULL_VERSION

# Push the changes (and tags)
git push -u origin master
git push --tags