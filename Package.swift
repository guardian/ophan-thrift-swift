// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "OphanThrift",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "OphanThrift",
            targets: ["OphanThrift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/guardian/thrift-swift.git", .exact("0.21.0-gu2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "OphanThrift",
            dependencies: ["Thrift"]),
    ]
)
