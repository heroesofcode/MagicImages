#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
extension Image {
    func download(url: String) -> Self {
        if let url = URL(string: url) {
            if let data = try? Data(contentsOf: url) {
                return Image(uiImage: UIImage(data: data)!).resizable()
            }
            return self.resizable()
        }
        
        return self.resizable()
    }
}
#endif
