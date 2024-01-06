import UIKit

extension UIImageView {

    func download(url: String, placeholder: UIImage?, cache: URLCache? = nil) {
        let cache = cache ?? URLCache.shared

        guard let getUrl = URL(string: url) else { return }
        let request = URLRequest(url: getUrl)

        if let data = cache.cachedResponse(for: request)?.data, let image = UIImage(data: data) {
            DispatchQueue.main.async {
                self.image = image
            }
        } else {
            image = placeholder

            dataTask(request: request, cache: cache)
        }
    }

    func download(url: String, cache: URLCache? = nil) {
        let cache = cache ?? URLCache.shared

        guard let getUrl = URL(string: url) else { return }
        let request = URLRequest(url: getUrl)

        if let data = cache.cachedResponse(for: request)?.data, let image = UIImage(data: data) {
            DispatchQueue.main.async {
                self.image = image
            }
        } else {
            dataTask(request: request, cache: cache)
        }
    }

    private func dataTask(request: URLRequest, cache: URLCache) {
        URLSession.shared.dataTask(with: request) { [weak self] data, response, _ in
            guard let data = data, let httpResponse = response as? HTTPURLResponse, 200 ... 299 ~= httpResponse.statusCode, let image = UIImage(data: data) else { return }

            let cachedData = CachedURLResponse(response: httpResponse, data: data)
            cache.storeCachedResponse(cachedData, for: request)
            DispatchQueue.main.async {
                self?.image = image
            }
        }.resume()
    }
}
