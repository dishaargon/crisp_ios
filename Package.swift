// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "CrispiOSPlugin",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "CrispiOSPlugin",
//            targets: ["CrispiOSPlugin"]),
//    ],
//    dependencies: [
//        .package(url: "https://github.com/crisp-im/crisp-sdk-ios.git", .upToNextMajor(from: "2.0.0")),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "CrispiOSPlugin",
//            dependencies: []),
//    ]
//)

let package = Package(
    name: "CrispiOSPlugin", dependencies: [
    .package(url: "https://github.com/crisp-im/crisp-sdk-ios.git", .upToNextMajor(from: "2.0.0")),
  ],
  targets: [
    .target(
      name: "CrispiOSPlugin",
      dependencies: [
        .product(name: "Crisp", package: "crisp-sdk-ios")
        // or: .productItem(name: "Crisp", package: "crisp-sdk-ios")
      ]
    )
  ]
)
