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
                Section(header: Text("UIKit")) {
                    NavigationLink {
                        ViewControllerDemo().navigationTitle("Demo")
                    } label: {
                        Label("Demo", systemImage: "photo.fill")
                    }
                    NavigationLink {
                        ViewControllerCircle().navigationTitle("Circle")
                    } label: {
                        Label("Circle", systemImage: "circle.fill")
                    }
                    NavigationLink {
                        ViewControllerRounded().navigationTitle("Rounded")
                    } label: {
                        Label("Rounded", systemImage: "rectangle.fill")
                    }
                    NavigationLink {
                        ViewControllerSides().navigationTitle("Sides")
                    } label: {
                        Label("Sides", systemImage: "rectangle.fill")
                    }
                }
                Section(header: Text("SwiftUI")) {
                    NavigationLink {
                        SwiftUIView().navigationTitle("Demo SwiftUI")
                    } label: {
                        Label("Demo", systemImage: "photo.fill")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
