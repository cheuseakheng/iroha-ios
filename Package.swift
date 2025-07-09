// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "IrohaCommunication",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "IrohaCommunication",
            targets: ["IrohaCommunication"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.21.0"),
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.10.0")
    ],
    targets: [
        .target(
            name: "IrohaCommunication",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "GRPC", package: "grpc-swift")
            ],
            path: "IrohaCommunication/Classes",
            exclude: ["main.m", "Info.plist"], // optional
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("../../ProtoGen")
            ]
        ),
        .target(
            name: "ProtoGen",
            dependencies: [],
            path: "ProtoGen",
            publicHeadersPath: "."
        )
    ]
)
