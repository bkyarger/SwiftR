// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftR",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftR",
            targets: ["SwiftR"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftR",
            dependencies: [],
            resources:[
                .copy("Web/SwiftR.js"),
                .copy("Web/jquery-2.1.3.min.js"),
                .copy("Web/jquery.signalr-2.0.0.min.js"),
                .copy("Web/jquery.signalr-2.0.1.min.js"),
                .copy("Web/jquery.signalr-2.0.2.min.js"),
                .copy("Web/jquery.signalr-2.0.3.min.js"),
                .copy("Web/jquery.signalr-2.1.0.min.js"),
                .copy("Web/jquery.signalr-2.1.1.min.js"),
                .copy("Web/jquery.signalr-2.1.2.min.js"),
                .copy("Web/jquery.signalr-2.2.0.min.js"),
                .copy("Web/jquery.signalr-2.2.1.min.js"),
                .copy("Web/jquery.signalr-2.2.2.min.js"),
            ]),
        .testTarget(
            name: "SwiftRTests",
            dependencies: ["SwiftR"]),
    ]
)
