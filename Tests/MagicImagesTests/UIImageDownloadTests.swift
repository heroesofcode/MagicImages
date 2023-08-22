import Foundation
import XCTest
@testable import MagicImages

class UIImageViewDownloadTests: XCTestCase {
    
    var imageView: UIImageView!
    
    override func setUp() {
        super.setUp()
        imageView = UIImageView()
    }
    
    override func tearDown() {
        imageView = nil
        super.tearDown()
    }
    
    func testImageDownload() {
        let expectation = XCTestExpectation(description: "Image download expectation")
        
        let imageUrlString = "https://avatars.githubusercontent.com/u/79725010?s=400&v=4"
        
        imageView.download(image: imageUrlString)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            XCTAssertNotNil(self.imageView.image)
            expectation.fulfill()
        }
        
        wait(for: [expectation], timeout: 10.0) // Adjust timeout as needed
    }
    
    func testInvalidURL() {
        let invalidUrlString = "invalid-url"
        
        imageView.download(image: invalidUrlString)
        
        // The imageView's image should remain nil due to an invalid URL
        XCTAssertNil(imageView.image, "Image should not be set for an invalid URL")
    }
}
