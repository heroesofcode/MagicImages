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
        image.download(url: url)
        return self
    }
    
    /// Add the image URL and Placeholder
    /// - Parameter url: Image URL
    /// - Parameter placeholder: Image placeholder
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func start(url: String, placeholder: String) -> Self {
        image.download(url: url, placeholder: UIImage(named: placeholder))
        return self
    }
    
    /// Add the image local with name
    /// - Parameter name: Image name
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func start(name: String) -> Self {
        image.image = UIImage(named: name)
        return self
    }
    
    /// Add the image local with any type of UIImage
    /// - Parameter uiImage: Variable type UIImage
    /// - Returns: Returns the method applied and activated
    @discardableResult
    public func start(uiImage: UIImage?) -> Self {
        image.image = uiImage
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
