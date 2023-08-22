import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    var allTests = [
        ("testVerifyIsCircleWithSuccess", testVerifyIsCircleWithSuccess),
        ("testVerifyIsRoundedWithSuccess", testVerifyIsRoundedWithSuccess),
        ("testVerifyIsSidesWithSuccess", testVerifyIsSidesWithSuccess),
        ("testVerifyGetImageWithSuccess", testVerifyGetImageWithSuccess),
        ("testVerifyRadiusInRoundCorners", testVerifyRadiusInRoundCorners),
        ("testVerifyIsCircleInterfaceBuilderIsTrue", testVerifyIsCircleInterfaceBuilderIsTrue),
        ("testVerifyIsRoundedInterfaceBuilderWithSuccess", testVerifyIsRoundedInterfaceBuilderWithSuccess),
        ("testImageDownload", testImageDownload),
        ("testInvalidURL", testInvalidURL)
    ]
    
    return [testCase(allTests)]
}
#endif
