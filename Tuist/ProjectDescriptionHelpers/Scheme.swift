import ProjectDescription

public extension Project {

    static func schemes() -> [Scheme] {
        return [
            Scheme(
                name: "MagicImages",
                buildAction: .buildAction(targets: ["MagicImages"]),
                testAction: .targets(["Tests"], options: .options(coverage: true, codeCoverageTargets: ["MagicImages"]))
            )
        ]
    }
}
