// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BigDecimal",
//    platforms: [
//        .macOS("13.3"), .iOS("16.4"), .macCatalyst(.v16), .tvOS("16.4"),
//        .watchOS("9.4")
//    ],
//  commented out due to playground incompatibility
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BigDecimal",
            targets: ["BigDecimal"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(
            url: "https://github.com/mgriebling/BigInt.git",
            revision: "78995be3d400bbcf2b041ad3503c1737e30d6702"
        ),
        .package(url: "https://github.com/mgriebling/UInt128.git", from: "3.0.0")
        // .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0") // playground incompatible
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BigDecimal",
            dependencies: ["BigInt", "UInt128"]),
                      // .product(name: "Numerics", package: "swift-numerics")]),
        .testTarget(
            name: "BigDecimalTests",
            dependencies: ["BigDecimal"]),
    ]
)

//package.dependencies.append(
//    .package(url: "https://github.com/SwiftPackageIndex/SPIManifest.git", from: "0.12.0")
//)
