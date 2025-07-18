test-ios:
	set -o pipefail && \
	xcodebuild test \
		-scheme MagicImages \
		-destination "platform=iOS Simulator,name=IPhone 16" \
		-enableCodeCoverage YES \
		clean test | xcpretty

build-tvos:
	set -o pipefail && \
	xcodebuild build \
		-scheme MagicImages \
		-destination "platform=tvOS Simulator,name=Apple TV" \
		clean build | xcpretty
