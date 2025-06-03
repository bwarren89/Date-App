// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SanJoseDatePlanner",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        .executable(name: "SanJoseDatePlanner", targets: ["SanJoseDatePlanner"])
    ],
    targets: [
        .executableTarget(
            name: "SanJoseDatePlanner",
            path: "SanJoseDatePlanner"
        )
    ]
)
