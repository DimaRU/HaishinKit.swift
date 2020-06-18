// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "HaishinKit",
    platforms: [
        .macOS(.v10_14),
        .iOS("12.1"),
        .tvOS("12.1")
    ],
    products: [
        .library(name: "HaishinKit", targets: ["HaishinKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/shogo4405/Logboard.git", from: "2.1.2")
    ],
    targets: [
        .target(name: "SwiftPMSupport"),
        .target(name: "HaishinKit", dependencies: ["Logboard", "SwiftPMSupport"],
                path: "Sources",
                sources: [
                    "Codec",
                    "Extension",
                    "FLV",
                    "ISO",
                    "Media",
                    "Net",
                    "Util",
                    "RTMP",
                    "Platforms"
                ])
    ]
)
