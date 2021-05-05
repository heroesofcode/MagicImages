# Magic Images

## Overview
Magic Image é uma biblioteca para facilitar o desenvolvimento de várias maneiras da imagem.

## How to use?

#### First Example
You can use it to view an image through a url, follow the example below

<img src="https://github.com/heroesofcode/MagicImages/blob/main/photos/start.png" width="400px" height="700px" />

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

<img src="https://github.com/heroesofcode/MagicImages/blob/main/photos/circle.png" width="400px" height="700px" />

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
You can use it to see an image with rounded edges. <b>Measure</b> is rounded edges

<img src="https://github.com/heroesofcode/MagicImages/blob/main/photos/rounded.png" width="400px" height="700px" />

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

Third example

You can use it to see an image with some sides of the rounded edges. <b>Measure</b> is rounded edges

<img src="https://github.com/heroesofcode/MagicImages/blob/main/photos/sides.png" width="400px" height="700px" />

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
        
    MagicImages(image: photo).start(url: "IMAGE URL")
            .isSides(measure: 50, mask: [.layerMaxXMaxYCorner, .layerMinXMinYCorner])
}
```

## Author
Coded by João Lucas

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
