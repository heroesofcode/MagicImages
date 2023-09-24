# Magic Images :camera_flash:

[![CI](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FMagicImages%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/heroesofcode/MagicImages)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FMagicImages%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/heroesofcode/MagicImages)
[![License](https://img.shields.io/github/license/joaolfp/ViewState.svg)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview
Magic Image is a library to facilitate the development of the image in various ways.

## Support
iOS / tvOS

## Usage

#### First Example
You can use it to view an image through a url, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/start.png" width="400px" height="700px" />

```swift
let photo: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
}()

override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(photo)

    photo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    photo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    photo.widthAnchor.constraint(equalToConstant: 100).isActive = true
    photo.heightAnchor.constraint(equalToConstant: 100).isActive = true

    MagicImages(image: photo).start(url: "IMAGE URL")
    // OR
    MagicImages(image: photo).start(name: "IMAGE NAME")
    // OR
    MagicImages(image: photo).start(uiImage: UIImage(systemName: "heart.fill"))
}
```

#### Second Example
You can use it to view a circular image. <b>Measure</b> is the width and height, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/circle.png" width="400px" height="700px" />

```swift
let photo: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
}()

override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(photo)

    photo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    photo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    MagicImages(image: photo).start(url: "IMAGE URL").isCircle(measure: 100)
}
```

#### Third Example
You can use it to see an image with rounded edges. <b>Measure</b> is rounded edges, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/rounded.png" width="400px" height="700px" />

```swift
let photo: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
}()

override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(photo)

    photo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    photo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    photo.widthAnchor.constraint(equalToConstant: 300).isActive = true
    photo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    MagicImages(image: photo).start(url: "IMAGE URL").isRounded(measure: 20)
}
```

#### Last Example
You can use it to see an image with some sides of the rounded edges. <b>Measure</b> is rounded edges, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/sides.png" width="400px" height="700px" />

```swift
let photo: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
 }()

override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(photo)

    photo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    photo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    photo.widthAnchor.constraint(equalToConstant: 300).isActive = true
    photo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
    MagicImages(image: photo).start(url: "IMAGE URL").isSides([.topLeft, .bottomRight], measures: 50)
}
```

### Examples with Interface Builder

#### 1 - Circle

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/Example-Class-Circle.png" width="500px" height="200px" />

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/Example-Circle.png" width="500px" height="200px" />

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/InterfaceBuilder-Circle.png" width="400px" height="800px" />

#### 2 - Rounded Edges

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/Example-Class-Rounded.png" width="500px" height="200px" />

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/Example-Rounded.png" width="500px" height="200px" />

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/InterfaceBuilder-Rounded.png" width="400px" height="800px" />



## Installation

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

```swift
dependencies: [
    .package(url: "https://github.com/heroesofcode/MagicImages.git", .upToNextMajor(from: "1.0.0"))
]
```

## Contributing

To contribute, just fork this project and then open a pull request, feel free to contribute, bring ideas and raise any problem in the issue tab.

## License

MagicImages is released under the MIT license. See LICENSE for details.
