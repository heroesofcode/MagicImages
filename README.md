# Magic Images :camera_flash:

[![CI](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml)
[![codecov](https://codecov.io/gh/heroesofcode/MagicImages/branch/main/graph/badge.svg?token=LVIQ3H0PTH)](https://codecov.io/gh/heroesofcode/MagicImages)
[![Swift Version](https://img.shields.io/badge/Swift-5.0.x-orange.svg)]()
[![Tag](https://img.shields.io/github/v/tag/heroesofcode/MagicImages?logo=github)](https://github.com/heroesofcode/MagicImages/releases)
![Cocoapods](https://img.shields.io/cocoapods/v/MagicImages.svg)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager)
[![License](https://img.shields.io/github/license/joaolfp/ViewState.svg)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview
Magic Image is a library to facilitate the development of the image in various ways.

## Support
iOS / tvOS

## How to use?

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

<details>
  <summary><strong>Swift Package Manager</strong></summary>
    
```swift
dependencies: [
    .package(url: "https://github.com/heroesofcode/MagicImages.git", .upToNextMajor(from: "0.4.3"))
]
```

```swift
import MagicImages
```
</details>

<details>
  <summary><strong>CocoaPods</strong></summary>

```swift
import MagicImages
```

```ruby
target '<Your Target Name>' do
    pod 'MagicImages'
end
```
<b>OR</b>
```ruby
target '<Your Target Name>' do
    pod 'MagicImages', :git => "https://github.com/heroesofcode/MagicImages.git"
end
```  

```bash
$ pod install
```
</details>

<details>
  <summary><strong>Carthage</strong></summary>
    
```bash
github "heroesofcode/MagicImages"
```
</details>

## Author
Coded by [João Lucas](https://github.com/joaolfp)

## License

```
MIT License

Copyright (c) 2021 Heroes of Code

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
