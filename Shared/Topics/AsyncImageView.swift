//
//  AsyncImageView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI


struct AsyncImageView: View {
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(0 ..< 100) { index in
                    renderAsyncImage("https://i.pravatar.cc/100?img=\(index)")
                }
            }.padding()
        }.frame(height: 120)
        .navigationTitle("AsyncImage")
    }
}

private extension AsyncImageView {
    
    func renderAsyncImage(_ stringURL: String) -> some View {
        AsyncImage(url: URL(string: stringURL)) { image in
            image.resizable()
        } placeholder: {
            Color.gray
        }
        .frame(width: 100, height: 100)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
