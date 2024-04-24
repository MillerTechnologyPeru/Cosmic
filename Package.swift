// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Cosmic",
    products: [
        .library(
            name: "Cosmic",
            type: .dynamic,
            targets: ["Cosmic"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/PureSwift/java_util.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/PureSwift/JNI.git",
            branch: "master"
        )
    ],
    targets: [
        .target(
            name: "Cosmic",
            dependencies: [
                "java_util",
                "JNI"
            ]
        ),
        .testTarget(
            name: "CosmicTests",
            dependencies: ["Cosmic"]
        ),
    ]
)
