//
//  DemoViewController.swift
//  Example
//
//  Created by João Lucas on 11/11/23.
//

import UIKit
import SwiftUI
import MagicImages

struct ViewControllerDemo: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = DemoViewController
    
    func makeUIViewController(context: Context) -> DemoViewController {
        DemoViewController()
    }
    
    func updateUIViewController(_ uiViewController: DemoViewController, context: Context) {
        //
    }
    
}

final class DemoViewController: UIViewController {
    
    private let url = "https://images.alphacoders.com/270/270241.jpg"
    
    private lazy var imageExample: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(imageExample)
        
        imageExample.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageExample.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageExample.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageExample.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        MagicImages(image: imageExample).start(url: url, placeholder: "photo")
        
        /**
        MagicImages(image: imageExample).start(name: "photo")
         
         OR
         
        MagicImages(image: imageExample).start(uiImage: UIImage(systemName: "heart.fill"))
        */
    }
}
