//
//  CircleViewController.swift
//  Example
//
//  Created by João Lucas on 11/11/23.
//

import UIKit
import SwiftUI
import MagicImages

struct ViewControllerCircle: UIViewControllerRepresentable {
        
    typealias UIViewControllerType = CircleViewController
    
    func makeUIViewController(context: Context) -> CircleViewController {
        CircleViewController()
    }
    
    func updateUIViewController(_ uiViewController: CircleViewController, context: Context) {
        //
    }
    
}

final class CircleViewController: UIViewController {
    
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
        
        MagicImages(image: imageExample).start(url: url, placeholder: "photo").isCircle(measure: 200)
    }
}
