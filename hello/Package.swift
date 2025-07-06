// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "hello",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        // Vapor (Web framework)
        .package(url: "https://github.com/vapor/vapor.git", from: "4.115.0"),
        // SwiftNIO (non-blocking I/O)
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.65.0"),
        // Fluent (ORM)
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        // Fluent SQLite driver
        .package(url: "https://github.com/vapor/fluent-sqlite-driver.git", from: "4.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "hello",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentSQLiteDriver", package: "fluent-sqlite-driver"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "helloTests",
            dependencies: [
                .target(name: "hello"),
                .product(name: "VaporTesting", package: "vapor"),
            ],
            swiftSettings: swiftSettings
        )
    ]
)

var swiftSettings: [SwiftSetting] {
    [
        .enableUpcomingFeature("ExistentialAny")
    ]
}
