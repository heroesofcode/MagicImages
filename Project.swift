import ProjectDescription
import ProjectDescriptionHelpers

let magicImages = Target(
    name: "MagicImages",
    platform: .iOS,
    product: .framework,
    bundleId: "com.heroesofcode.magicimages",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    sources: ["Sources/MagicImages/**/*"],
    scripts: Project.targetScripts()
)

let tests =  Target(
    name: "Tests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.heroesofcode.magicimagesTests",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: .default,
    sources: ["Tests/MagicImagesTests/**/*"],
    dependencies: [
        .target(name: "MagicImages")
    ]
)

let example = Target(
    name: "Example",
    platform: .iOS,
    product: .app,
    bundleId: "com.heroesofcode.MagicImagesExample",
    deploymentTarget: .iOS(targetVersion: "15.0", devices: [.iphone]),
    infoPlist: "Example/Example/Info.plist",
    sources: ["Example/Example/**/*"],
    resources: [
        "Example/Example/Assets.xcassets",
        "Example/Example/Base.lproj/**"
    ],
    scripts: Project.targetScripts(),
    dependencies: [
        .target(name: "MagicImages")
    ],
    settings: Project.settings()
)

let project = Project(
    name: "MagicImages",
    targets: [magicImages, tests, example],
    schemes: Project.schemes()
)
