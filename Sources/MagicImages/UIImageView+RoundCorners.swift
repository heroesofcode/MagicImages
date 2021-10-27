import UIKit

extension UIImageView {
    func roundCorners(corners: UIRectCorner = .allCorners, radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
            
        setupCorners(corners: corners)
    }
    
    private func setupCorners(corners: UIRectCorner) {
        var cornerMark: CACornerMask = []
                
        let allCorners: [UIRectCorner] = [.topLeft, .topRight, .bottomLeft, .bottomRight, .allCorners]
        
        if #available(iOS 11.0, *) {
            for corner in allCorners {
                if corners.contains(corner) {
                    switch corner {
                    case .topLeft:
                        cornerMark.insert(.layerMinXMinYCorner)
                    case .topRight:
                        cornerMark.insert(.layerMaxXMinYCorner)
                    case .bottomLeft:
                        cornerMark.insert(.layerMinXMaxYCorner)
                    case .bottomRight:
                        cornerMark.insert(.layerMaxXMaxYCorner)
                    case .allCorners:
                        cornerMark.insert(.layerMinXMinYCorner)
                        cornerMark.insert(.layerMaxXMinYCorner)
                        cornerMark.insert(.layerMinXMaxYCorner)
                        cornerMark.insert(.layerMaxXMaxYCorner)
                    default:
                        break
                    }
                }
            }
            layer.maskedCorners = cornerMark
        }
    }
}
