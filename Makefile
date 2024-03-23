test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme MagicImages \
		-destination "platform=iOS Simulator,name=IPhone 15" \
		-enableCodeCoverage YES \
		clean test | xcpretty
