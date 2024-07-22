import Foundation
import XCTest
@testable import MagicImages

final class UIImageViewDownloadTests: XCTestCase {

    var imageView: UIImageView!
    var cache: URLCache!
    var session: URLSession!

    override func setUp() {
        super.setUp()
        imageView = UIImageView()
        
        let config = URLSessionConfiguration.ephemeral
        config.protocolClasses = [MockURLProtocol.self]
        session = URLSession(configuration: config)
        
        cache = URLCache(
            memoryCapacity: 512_000, 
            diskCapacity: 10_000_000,
            diskPath: nil)
    }

    override func tearDown() {
        super.tearDown()
        imageView = nil
        cache.removeAllCachedResponses()
        cache = nil
        session = nil
    }

    func testImageDownload() {
        let expectation = XCTestExpectation(description: "Image download expectation")

        let imageUrlString = "https://avatars.githubusercontent.com/u/79725010?s=400&v=4"
        let imageUrl = URL(string: imageUrlString)!
        let testImageData = UIImage(systemName: "checkmark")!.pngData()!
        MockURLProtocol.testURLs = [imageUrl: testImageData]

        imageView.download(url: imageUrlString, cache: cache, session: session)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 2.0)
    }

    func testImageFromCache() {
        let expectation = XCTestExpectation(description: "Image from cache expectation")

        let imageUrlString = "https://avatars.githubusercontent.com/u/79725010?s=400&v=4"
        let imageUrl = URL(string: imageUrlString)!
        let testImageData = UIImage(systemName: "checkmark")!.pngData()!
        let response = URLResponse(
            url: imageUrl,
            mimeType: "image/png",
            expectedContentLength: testImageData.count,
            textEncodingName: nil)
        
        let cachedResponse = CachedURLResponse(response: response, data: testImageData)
        cache.storeCachedResponse(cachedResponse, for: URLRequest(url: imageUrl))

        imageView.download(url: imageUrlString, cache: cache, session: session)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            XCTAssertNotNil(self.imageView.image)
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 2.0)
    }

    func testInvalidURL() {
        let invalidUrlString = "invalid-url"
        imageView.download(url: invalidUrlString, session: session)
        XCTAssertNil(imageView.image, "Image should not be set for an invalid URL")
    }
}
