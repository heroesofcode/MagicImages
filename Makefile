test:
	set -o pipefail && xcodebuild -workspace MagicImages.xcworkspace -scheme "MagicImages" -destination "platform=iOS Simulator,name=iPhone 14" clean test | xcpretty
