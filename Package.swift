// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "NeueOpt",
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "NeueOpt",
      targets: ["NeueOpt"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/ProfFan/penguin.git", branch: "dev/make-compile")
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "NeueOpt",
      dependencies: [
        .product(name: "PenguinStructures", package: "Penguin"),
        .product(name: "PenguinTesting", package: "Penguin"),
        .product(name: "PenguinParallelWithFoundation", package: "Penguin"),
      ],
      exclude: [
        "Core/VectorN.swift.gyb"
      ]),
    .testTarget(
      name: "NeueOptTests",
      dependencies: ["NeueOpt"]),
  ]
)
