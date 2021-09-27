test:
	set -o pipefail
	xcodebuild -project MagicImages.xcodeproj \
           -scheme MagicImages-Package \
           -destination platform=iOS\ Simulator,name=iPhone\ 8 \
           clean test | xcpretty
