// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GeoQueries",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "GeoQueries",
            targets: ["GeoQueries"]),
    ],
    dependencies: [
        .package(url: "https://github.com/realm/realm-cocoa.git", .exact(Version(4, 3, 0))),
    ],
    targets: [
        .target(
            name: "GeoQueries",
            dependencies: ["RealmSwift"],
            path: ".",
            sources: ["GeoQueries.swift"]
        )
    ]
)
