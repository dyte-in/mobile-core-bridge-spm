// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKitFlutterCoreKMM-unspecified-a460a116-75b1-4ab7-a0d9-fcff1172b950.xcframework.zip"
let remoteKotlinChecksum = "701d46dc50167ddfc35d822e4086eede848e8345fc2b058e3659ff74cfeccd84"
let packageName = "RealtimeKitFlutterCoreKMM"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "RealtimeKitBridge",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: packageName, targets: [packageName, "DyteWebRTC"]),
        .library(name: "DyteWebRTC", targets: ["DyteWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DyteWebRTC",
            url: "https://sdk-assets.realtime.cloudflare.com/DyteWebRTC_v0.0.4.zip",
            checksum: "25318dfb4bd018fde6ed7fd3337d9aa1c62fc8b39ab985c60fa530eb3819e68a"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
