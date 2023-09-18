test:
	set -o pipefail && xcodebuild test -scheme "MagicImages" -destination "platform=iOS Simulator,name=IPhone 14" -enableCodeCoverage YES clean test | xcpretty

build:
	set -o pipefail && xcodebuild build -scheme "MagicImages" -destination "platform=iOS Simulator,name=IPhone 14" | xcpretty
