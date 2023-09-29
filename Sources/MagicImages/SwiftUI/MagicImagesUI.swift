#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, tvOS 13.0, *)
public struct MagicImagesUI: View {
    
    private var url: String
    
    public init(url: String) {
        self.url = url
    }
    
    public var body: some View {
        Image("photo_magic_images").download(url: url)
    }
}
#endif

#if DEBUG
@available(iOS 13.0, tvOS 13.0, *)
struct MagicImages_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MagicImagesUI(url: "https://raw.githubusercontent.com/heroesofcode/MagicImages/main/Example/Example/Assets.xcassets/photo.imageset/photo.jpeg")
                .frame(width: 300, height: 300)
        }
    }
}
#endif
