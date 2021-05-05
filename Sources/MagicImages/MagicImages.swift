import Foundation
import UIKit

public class MagicImages {
    
    private var image: UIImageView
    
    public init(image: UIImageView) {
        self.image = image
    }
    
    @discardableResult
    public func start(url: String) -> Self {
        image.download(image: url)
        return self
    }
    
    @discardableResult
    public func isCircle(measure: CGFloat) -> Self {
        image.layer.cornerRadius = measure / 2
        image.clipsToBounds = true
        
        image.widthAnchor.constraint(equalToConstant: measure).isActive = true
        image.heightAnchor.constraint(equalToConstant: measure).isActive = true
        return self
    }
    
    @discardableResult
    public func isRounded(measure: CGFloat) -> Self {
        image.layer.cornerRadius = measure
        image.clipsToBounds = true
        return self
    }
    
    @discardableResult
    public func isSides(measure: CGFloat, mask: CACornerMask.ArrayLiteralElement) -> Self {
        image.layer.cornerRadius = measure
        image.layer.maskedCorners = mask
        image.clipsToBounds = true
        return self
    }
}
