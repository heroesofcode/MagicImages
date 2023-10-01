//
//  ViewController.swift
//  Example
//
//  Created by João Lucas on 19/08/23.
//

import UIKit
import MagicImages

final class ViewController: UIViewController {
    
    private let url = "https://images.alphacoders.com/270/270241.jpg"
    
    private lazy var firstExample: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var secondExample: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    private lazy var thirdExample: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var lastExample: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupFirstExample()
        setupSecondExample()
        setupThirdExample()
        setupLastExample()
    }
    
    // MARK: - Default
    private func setupFirstExample() {
        view.addSubview(firstExample)
        
        firstExample.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        firstExample.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        firstExample.widthAnchor.constraint(equalToConstant: 150).isActive = true
        firstExample.heightAnchor.constraint(equalToConstant: 100).isActive = true

        MagicImages(image: firstExample).start(url: url, placeholder: "photo")
        
        /**
         MagicImages(image: firstExample).start(name: "photo")
         
         OR
         
         MagicImages(image: firstExample).start(uiImage: UIImage(systemName: "heart.fill"))
         */
    }
    
    // MARK: - Circle
    private func setupSecondExample() {
        view.addSubview(secondExample)
        
        secondExample.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        secondExample.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true

        MagicImages(image: secondExample).start(url: url, placeholder: "photo").isCircle(measure: 150)
    }
    
    // MARK: - Border rounded
    private func setupThirdExample() {
        view.addSubview(thirdExample)
        
        thirdExample.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        thirdExample.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        thirdExample.widthAnchor.constraint(equalToConstant: 150).isActive = true
        thirdExample.heightAnchor.constraint(equalToConstant: 100).isActive = true

        MagicImages(image: thirdExample).start(url: url, placeholder: "photo").isRounded(measure: 20)
    }
    
    // MARK: - Border sides
    private func setupLastExample() {
        view.addSubview(lastExample)
        
        lastExample.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30).isActive = true
        lastExample.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        lastExample.widthAnchor.constraint(equalToConstant: 150).isActive = true
        lastExample.heightAnchor.constraint(equalToConstant: 100).isActive = true

        MagicImages(image: lastExample).start(url: url, placeholder: "photo")
            .isSides([.topLeft, .bottomRight], measures: 50)
    }
}
