#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, *)
extension Image {
    func download(url:URL) -> Self {
        if let data = try? Data(contentsOf: url) {
            return Image(uiImage: UIImage(data: data)!).resizable()
        }
        return self.resizable()
    }
}
#endif
