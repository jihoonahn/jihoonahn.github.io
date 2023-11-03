// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "jihoonahn.github.io",
    platforms: [.macOS(.v10_15)],
    products: [
        .executable(
            name: "Github",
            targets: ["Github"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/Plot.git", from: "0.14.0")
    ],
    targets: [
        .executableTarget(
            name: "Github",
            dependencies: [
                .product(name: "Plot", package: "Plot")
            ],
            path: "Sources"
        )
    ]
)
