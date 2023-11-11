//
//  ContentView.swift
//  Example
//
//  Created by João Lucas on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink {
                    ViewControllerDemo().navigationTitle("Demo")
                } label: {
                    Label("Demo", systemImage: "text.quote")
                }
                NavigationLink {
                    ViewControllerCircle().navigationTitle("Circle")
                } label: {
                    Label("Circle", systemImage: "text.quote")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
