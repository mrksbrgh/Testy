// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
  name: "MyLibrary",
  platforms: [.iOS(.v16)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "MyLibrary",
      targets: ["MyLibrary"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0")
    .package(url: "https://github.com/realm/SwiftLint.git", .upToNextMajor(from: "0.51.0")),
    .package(url: "https://github.com/firebase/firebase-ios-sdk.git", .upToNextMajor(from: "9.3.0"))
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "MyLibrary",
      dependencies: [],
      plugins: [
        .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
      ]
    ),
    .testTarget(
      name: "MyLibraryTests",
      dependencies: ["MyLibrary"],
      plugins: [
        .plugin(name: "SwiftLintPlugin", package: "SwiftLint")
      ]
    ),
  ]
)
