import UIKit

extension UIImageView {
    func download(image url: String) {
        guard let imageUrl = URL(string: url) else { return }
        
        let task = URLSession.shared.dataTask(with: imageUrl) { (data, _, _) in
            guard let data = data else {
                print("no data, or there was an error")
                return
            }
            
            let downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.image = downloadedImage
            }
        }
        task.resume()
    }
}
