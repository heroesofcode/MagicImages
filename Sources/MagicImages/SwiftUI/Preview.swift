#if DEBUG
import SwiftUI
@available(iOS 13.0, tvOS 13.0, *)
struct MagicImages_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Image("placeholder_image")
                .download(url: URL(string: "https://raw.githubusercontent.com/heroesofcode/MagicImages/main/Example/Example/Assets.xcassets/photo.imageset/photo.jpeg")!)
                .frame(width: 200, height: 200)
        }
    }
}
#endif
