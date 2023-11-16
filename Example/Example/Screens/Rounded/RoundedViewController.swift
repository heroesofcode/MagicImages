//
//  RoundedViewController.swift
//  Example
//
//  Created by João Lucas on 11/11/23.
//

import UIKit
import SwiftUI
import MagicImages

struct ViewControllerRounded: UIViewControllerRepresentable {
        
    typealias UIViewControllerType = RoundedViewController
    
    func makeUIViewController(context: Context) -> RoundedViewController {
        RoundedViewController()
    }
    
    func updateUIViewController(_ uiViewController: RoundedViewController, context: Context) {
        //
    }
    
}

final class RoundedViewController: UIViewController {
    
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
        imageExample.widthAnchor.constraint(equalToConstant: 250).isActive = true
        imageExample.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        MagicImages(image: imageExample).start(url: url, placeholder: "photo").isRounded(measure: 20)
    }
    
}
