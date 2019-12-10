# ophan-thrift-swift

This repository contains:

1) A [Swift Package](https://swift.org/package-manager/) containing the Thrift definitions used for [Ophan](https://github.com/guardian/ophan) tracking.
2) A custom [GitHub Action](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-a-docker-container-action), which is used for auto-generating the aforementioned Swift Package in response to changes to Ophan's Thrift definitions.

## Swift Package

This package contains the Swift Thrift models required for sending tracking events to Ophan. It can be [imported](https://swift.org/package-manager/#example-usage) (as a dependency) by a Swift project (e.g. the [iOS Live App](https://github.com/guardian/ios-live)).

## GitHub Action

This is comprised of three main parts:

1) A [Dockerfile](https://github.com/guardian/ophan-thrift-swift/blob/master/Dockerfile), which describes the environment (e.g. an appropriate version of Thrift) needed to auto-generate the Swift Package.
2) A [bash script](https://github.com/guardian/ophan-thrift-swift/blob/master/entrypoint.sh), which updates the Swift Thrift models stored in this repository and creates a [release](https://github.com/guardian/ophan-thrift-swift/releases). The script is invoked as [part of the Dockerfile](https://github.com/guardian/ophan-thrift-swift/blob/master/Dockerfile#L45).
3) A custom [GitHub Action](https://github.com/guardian/ophan-thrift-swift/blob/master/action.yml), which allows a [workflow defined in another repository](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-a-docker-container-action#testing-out-your-action-in-a-workflow) to run our script (inside the relevant Docker container). Although the Action is _defined_ in this repository, it is _invoked_ inside the [Ophan repository](https://github.com/guardian/ophan/actions?query=workflow%3A.github%2Fworkflows%2Fgenerate-swift-classes.yml), since it needs to be triggered in response to [changes to the Thrift definitions](https://github.com/guardian/ophan/blob/master/.github/workflows/generate-swift-classes.yml#L5-L6).
