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
        
        for corner in allCorners where corners.contains(corner) {
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
        layer.maskedCorners = cornerMark
    }
}
