import XCTest
import UIKit
@testable import MagicImages

final class MagicImagesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testVerifyIsCircleWithSuccess() {
        let image = UIImageView()
        MagicImages(image: image).start(url: "https://www.image.com/photo.png").isCircle(measure: 100)
        XCTAssertEqual(image.layer.cornerRadius, 100 / 2)
    }

    func testVerifyIsRoundedWithSuccess() {
        let image = UIImageView()
        MagicImages(image: image).start(url: "https://www.image.com/photo.png").isRounded(measure: 12)
        XCTAssertEqual(image.layer.cornerRadius, 12)
    }
    
    func testVerifyIsSidesWithSuccess() {
        let image = UIImageView()
        MagicImages(image: image).start(url: "https://www.image.com/photo.png")
            .isSides(measure: 20, mask: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
            
        XCTAssertEqual(image.layer.cornerRadius, 20)
        XCTAssertEqual(image.layer.maskedCorners, [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
    }
    
    func testVerifyGetImageWithSuccess() {
        let url = "www.image.com/image.jpg"
        let image = UIImageView()
        XCTAssertNotNil(image.download(image: url))
    }
    
    static var allTests = [
        ("testVerifyIsCircleWithSuccess", testVerifyIsCircleWithSuccess),
        ("testVerifyIsRoundedWithSuccess", testVerifyIsRoundedWithSuccess),
        ("testVerifyIsSidesWithSuccess", testVerifyIsSidesWithSuccess),
        ("testVerifyGetImageWithSuccess", testVerifyGetImageWithSuccess)
    ]
}
