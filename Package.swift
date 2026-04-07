// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Localization",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "LocalizationKit",
            targets: ["LocalizationKit"]
        ),
        .library(
            name: "LocalizationService",
            targets: ["LocalizationService"]
        ),
    ],
    dependencies: [
        // No external dependencies for now
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.77.0"),
    ],
    targets: [
        .target(
            name: "LocalizationKit",
            dependencies: [],
            path: "packages/ios",
            exclude: [
                "swiftgen.yml"
            ],
            resources: [
                .process("Resources")
            ]
//            ,
//            swiftSettings: [
//                .swiftLanguageMode(.v6)
//            ]
        ),
        .target(
            name: "LocalizationService",
            dependencies: [
                .product(name: "NIO", package: "swift-nio"),
            ],
            path: "packages/backend",
            exclude: [
                "Glossary",
                "Tests"
            ],
            resources: [
                .copy("Resources")
            ]
//            swiftSettings: [
//                .swiftLanguageMode(.v6)
//            ]
        ),
        .testTarget(
            name: "LocalizationServiceTests",
            dependencies: ["LocalizationService"],
            path: "packages/backend/Tests"
        )
    ]
)
