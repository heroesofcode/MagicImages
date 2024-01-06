<p align="center">
    <img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/logo.png">
</p>

[![CI](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml/badge.svg)](https://github.com/heroesofcode/MagicImages/actions/workflows/CI.yml)
[![SPM compatible](https://img.shields.io/badge/SPM-compatible-brightgreen)](https://swift.org/package-manager)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FMagicImages%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/heroesofcode/MagicImages)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fheroesofcode%2FMagicImages%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/heroesofcode/MagicImages)
[![License](https://img.shields.io/github/license/joaolfp/ViewState.svg)](https://github.com/joaolfp/DataLife/blob/master/LICENSE)

## Overview

- [x] A library to facilitate the development of the image in various ways.
- [x] Provides caching support.
- [x] SwiftUI support.

## Usage

#### First Example
You can use it to view an image through a url, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/start.png" width="310" height="680" />

```swift
MagicImages(image: imageView).start(url: "IMAGE URL")
    
// OR

MagicImages(image: imageView).start(url: "IMAGE URL", placeholder: "PhotoLocal")

// OR
    
MagicImages(image: imageView).start(name: "IMAGE NAME")
    
// OR
    
MagicImages(image: imageView).start(uiImage: UIImage(systemName: "heart.fill"))
```

#### Example SwiftUI

```swift
var body: some View {
     MagicImagesUI(url: "www.example.com/image.jpg")
        .frame(width: 300, height: 300)
        .cornerRadius(20)
}
```

#### Second Example
You can use it to view a circular image. Measure is the width and height, follow the example below. Here you don't need to put width and height in the constraint, in the measure parameter Magic Images is already doing that.

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/circle.png" width="310" height="680" />

```swift
MagicImages(image: imageView).start(url: "IMAGE URL").isCircle(measure: 100)
```

#### Third Example
You can use it to see an image with rounded edges. <b>Measure</b> is rounded edges, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/rounded.png" width="310" height="680" />

```swift
MagicImages(image: imageView).start(url: "IMAGE URL").isRounded(measure: 20)
```

#### Last Example
You can use it to see an image with some sides of the rounded edges. <b>Measure</b> is rounded edges, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/.github/assets/sides.png" width="310" height="680" />

```swift
MagicImages(image: imageView).start(url: "IMAGE URL").isSides([.topLeft, .bottomRight], measures: 50)
```

## Installation

### [Swift Package Manager (SPM)](https://swift.org/package-manager)

```swift
import PackageDescription
let package = Package(
    name: "<Your Product Name>",
    dependencies: [
       .package(url: "https://github.com/heroesofcode/MagicImages", .upToNextMajor(from: "1.4.0"))
    ],
    targets: [
        .target(
            name: "<Your Target Name>",
            dependencies: ["MagicImages"]),
    ]
)
```

## Contributing

To contribute, just fork this project and then open a pull request, feel free to contribute, bring ideas and raise any problem in the issue tab.

## Contributors

<a href="https://github.com/heroesofcode/MagicImages/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=heroesofcode/MagicImages" />
</a>

## License

MagicImages is released under the MIT license. See [LICENSE](https://github.com/heroesofcode/MagicImages/blob/feature/add-contributors/LICENSE) for details.
