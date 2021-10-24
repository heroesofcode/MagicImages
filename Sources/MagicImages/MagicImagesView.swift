import UIKit

@IBDesignable
public class MagicImageCircle: UIImageView {
    
    /// Will leave the image as a circle in interface builder
    @IBInspectable public var isCircle: Bool = false {
        didSet {
            if self.isCircle == true {
                layer.cornerRadius = (self.frame.width + self.frame.height) / 4
                layer.masksToBounds = true
            }
        }
    }
}

@IBDesignable
public class MagicImageRounded: UIImageView {
    
    /// Will leave the image as a rounded edges in interface builder
    @IBInspectable public var isRounded: CGFloat = 0 {
        didSet {
            layer.cornerRadius = isRounded
            layer.masksToBounds = true
        }
    }
}
