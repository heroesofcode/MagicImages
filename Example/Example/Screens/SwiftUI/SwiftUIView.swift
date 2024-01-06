//
//  SwiftUIView.swift
//  Example
//
//  Created by João Lucas on 28/09/23.
//

import MagicImages
import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        let url = "https://raw.githubusercontent.com/heroesofcode/MagicImages/main/Example/Example/Assets.xcassets/photo.imageset/photo.jpeg"

        MagicImagesUI(url: url)
            .frame(width: 300, height: 300)
            .cornerRadius(20)
    }
}

#Preview {
    SwiftUIView()
}
