import UIKit

extension UIImageView {
    
    func download(
        url: String,
        placeholder: UIImage? = nil,
        cache: URLCache? = nil,
        session: URLSession = .shared) {
            
        let cache = cache ?? URLCache.shared

        guard let getUrl = URL(string: url) else { return }
        let request = URLRequest(url: getUrl)
        
        if let data = cache.cachedResponse(for: request)?.data,
           let image = UIImage(data: data) {
            
            DispatchQueue.main.async {
                self.image = image
            }
        } else {
            image = placeholder
            dataTask(request: request, cache: cache, session: session)
        }
    }

    private func dataTask(
        request: URLRequest,
        cache: URLCache,
        session: URLSession) {
            
        session.dataTask(with: request) { [weak self] data, response, _ in
            guard let data = data,
                  let httpResponse = response as? HTTPURLResponse, 200 ... 299 ~= httpResponse.statusCode,
                  let image = UIImage(data: data)
            else { return }
            
            let cachedData = CachedURLResponse(response: httpResponse, data: data)
            cache.storeCachedResponse(cachedData, for: request)
            
            DispatchQueue.main.async {
                self?.image = image
            }
        }.resume()
    }
}
