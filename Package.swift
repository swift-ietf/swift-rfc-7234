// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let rfc7234: Self = "RFC_7234"
}

extension Target.Dependency {
    static var rfc7234: Self { .target(name: .rfc7234) }
}

let package = Package(
    name: "swift-rfc-7234",
    platforms: [
        .macOS(.v13),
        .iOS(.v16)
    ],
    products: [
        .library(name: .rfc7234, targets: [.rfc7234]),
    ],
    dependencies: [
        // Add RFC dependencies here as needed
        // .package(url: "https://github.com/swift-ietf/swift-rfc-1123.git", branch: "main"),
    ],
    targets: [
        .target(
            name: .rfc7234,
            dependencies: [
                // Add target dependencies here
            ]
        ),
        .testTarget(
            name: .rfc7234.tests,
            dependencies: [
                .rfc7234
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)

extension String { var tests: Self { self + " Tests" } }