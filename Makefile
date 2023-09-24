test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme MagicImages \
		-destination "platform=iOS Simulator,name=IPhone 14" clean test | xcpretty
