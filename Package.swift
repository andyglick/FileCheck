// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "FileCheck",
  products: [
    .executable(name: "filecheck",
                targets: ["filecheck-tool"]),
    .library(
      name: "FileCheck",
      targets: ["FileCheck"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-tools-support-core.git", .exact("0.0.1")),
  ],
  targets: [
    .target(
      name: "FileCheck"),
    .target(
      name: "filecheck-tool",
      dependencies: ["FileCheck", "SwiftToolsSupport"]),
    .testTarget(
      name: "FileCheckTests",
      dependencies: ["FileCheck"]),
  ]
)
