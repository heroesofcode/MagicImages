import UIKit

public class MagicImages {
    
    private var image: UIImageView
    
    /// Init
    /// - Parameter image: An image of type UIImageView
    public init(image: UIImageView) {
        self.image = image
    }
    
    /// Add the image URL
    /// - Parameter url: Image URL
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func start(url: String) -> Self {
        image.download(image: url)
        return self
    }
    
    /// Add the image circle
    /// - Parameter measure: Corner Radius
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func isCircle(measure: CGFloat) -> Self {
        image.layer.cornerRadius = measure / 2
        image.clipsToBounds = true
        
        image.widthAnchor.constraint(equalToConstant: measure).isActive = true
        image.heightAnchor.constraint(equalToConstant: measure).isActive = true
        return self
    }
    
    /// Add the image with rounded edges
    /// - Parameter measure: Corner Radius
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func isRounded(measure: CGFloat) -> Self {
        image.layer.cornerRadius = measure
        image.clipsToBounds = true
        return self
    }
    
    /// Add the image round in sides
    /// - Parameters:
    ///   - corners: is an array or you can add only one side, Ex: [.topLeft, .topRight, .bottomLeft, .bottomRight]
    ///   - measures: Corner Radius
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func isSides(_ corners: UIRectCorner, measures: CGFloat) -> Self {
        image.roundCorners(corners: corners, radius: measures)
        image.clipsToBounds = true
        return self
    }
}
