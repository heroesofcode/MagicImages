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
    
    func testVerifyStartWithURL() {
        let image = UIImageView()
        MagicImages(image: image).start(url: "https://www.image.com/photo.png")
        XCTAssertNotNil(image)
    }
    
    func testVerifyStartWithName() {
        let image = UIImageView()
        MagicImages(image: image).start(name: "photo")
        XCTAssertNotNil(image)
    }
    
    func testVerifyStartWithUIImage() {
        let image = UIImageView()
        MagicImages(image: image).start(uiImage: UIImage())
        XCTAssertNotNil(image)
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
            .isSides([.topLeft, .bottomRight], measures: 20)
            
        XCTAssertEqual(image.layer.cornerRadius, 20)
        
        if #available(tvOS 11.0, *) {
            XCTAssertEqual(image.layer.maskedCorners, [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
        }
    }
    
    func testVerifyGetImageWithSuccess() {
        let url = "www.image.com/image.jpg"
        let image = UIImageView()
        XCTAssertNotNil(image.download(image: url))
    }
    
    func testVerifyRadiusInRoundCorners() {
        let image = UIImageView()
        image.roundCorners(corners: [.topLeft, .bottomLeft], radius: 10)
        
        XCTAssertEqual(image.layer.cornerRadius, 10)
    }
    
    func testVerifyIsCircleInterfaceBuilderIsTrue() {
        let image = MagicImageCircle()
        image.isCircle = true
        
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        image.layer.cornerRadius = 100 / 2
        
        XCTAssertEqual(image.layer.cornerRadius, 50)
    }
    
    func testVerifyIsRoundedInterfaceBuilderWithSuccess() {
        let image = MagicImageRounded()
        image.isRounded = 50
        
        XCTAssertEqual(image.layer.cornerRadius, 50)
    }
}
