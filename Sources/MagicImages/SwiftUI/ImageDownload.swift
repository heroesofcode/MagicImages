#if canImport(SwiftUI)
    import Combine
    import SwiftUI

    final class ImageDownload: ObservableObject {
        @Published var image: UIImage?

        private var cancellable: AnyCancellable?

        init(url: URL) {
            loadImage(from: url)
        }

        private func loadImage(from url: URL) {
            let cache = URLCache.shared
            let request = URLRequest(url: url)

            if let data = cache.cachedResponse(for: request)?.data,
                let cachedImage = UIImage(data: data) {
                image = cachedImage
                return
            }

            cancellable = URLSession.shared.dataTaskPublisher(for: url)
                .map { UIImage(data: $0.data) }
                .replaceError(with: nil)
                .receive(on: DispatchQueue.main)
                .sink { [weak self] image in
                    self?.image = image

                    if let data = image?.pngData() {
                        let response = URLResponse(
                            url: url, mimeType: nil,
                            expectedContentLength: data.count,
                            textEncodingName: nil)
                        
                        let cachedResponse = CachedURLResponse(response: response, data: data)
                        cache.storeCachedResponse(cachedResponse, for: request)
                    }
                }
        }
    }

    struct AsyncImageView: View {
        @ObservedObject private var imageLoader: ImageDownload

        init(url: URL) {
            imageLoader = ImageDownload(url: url)
        }

        var body: some View {
            if let uiImage = imageLoader.image {
                Image(uiImage: uiImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }

#endif
