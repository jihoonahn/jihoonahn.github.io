// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "jihoonahn.github.io",
    platforms: [.macOS(.v10_15)],
    products: [
        .executable(
            name: "Redirect",
            targets: ["Redirect"]
        ),
        .library(
            name: "Core",
            targets: ["Core"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Plot.git", from: "0.14.0")
    ],
    targets: [
        .executableTarget(
            name: "Redirect",
            dependencies: [
                "Core"
            ]
        ),
        .target(
            name: "Core",
            dependencies: [
                .product(name: "Plot", package: "Plot")
            ]
        )
    ]
)
