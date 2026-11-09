// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_background_service_ios",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "flutter-background-service-ios", targets: ["flutter_background_service_ios"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "flutter_background_service_ios",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            resources: [
                .process("PrivacyInfo.xcprivacy")
            ]
        )
    ]
)
