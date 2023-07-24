// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "URKit",
    platforms: [
        .macOS(.v11),
        .iOS(.v13),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "URKit",
            targets: ["URKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/KeystoneHQ/BCSwiftDCBOR.git", from: "0.10.0"),
        .package(url: "https://github.com/KeystoneHQ/BCSwiftCrypto.git", from: "0.9.0")
    ],
    targets: [
        .target(
            name: "URKit",
            dependencies: [
                .product(name: "DCBOR", package: "BCSwiftDCBOR"),
                .product(name: "BCCrypto", package: "BCSwiftCrypto"),
            ]
        ),
        .testTarget(
            name: "URKitTests",
            dependencies: [
                "URKit",
            ]
        ),
    ]
)
