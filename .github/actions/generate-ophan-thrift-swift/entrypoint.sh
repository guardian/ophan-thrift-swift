#!/bin/sh -l

# Describe dependencies (for debugging Docker)
git --version
thrift --version

# Git setup
git config --global credential.helper store
# Store the personal access token (which is passed to this script via our GitHub Action) in .git-credentials
echo "https://$1:x-oauth-basic@github.com" > ~/.git-credentials
git config --global user.name "GuardianAndroid"
git config --global user.email "GuardianAndroid"

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
git checkout -b update-models #TODO delete after testing - use master
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
git push -u origin update-models #TODO delete after testing - use master
git push --tags






