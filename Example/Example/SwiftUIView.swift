//
//  SwiftUIView.swift
//  Example
//
//  Created by João Lucas on 28/09/23.
//

import SwiftUI
import MagicImages

struct SwiftUIView: View {
    var body: some View {
        let url = URL(string: "https://raw.githubusercontent.com/heroesofcode/MagicImages/main/Example/Example/Assets.xcassets/photo.imageset/photo.jpeg")
        
        MagicImagesUI(url: url!)
            .frame(width: 300, height: 300)
            .cornerRadius(20)
    }
}

#Preview {
    SwiftUIView()
}
