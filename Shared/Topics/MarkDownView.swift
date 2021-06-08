//
//  MarkDownView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct MarkDownView: View {
    
    var body: some View {
        VStack {
            Text("This is no formatted text")
            Text("This is **bold** text")
            Text("This is *italic* text")
            Text("This is ***bold, italic*** text")
            Text("This is ~~strikethrough line text~~")
            Text("This is `Monospaced style text`")
            Text("This is a link text: [tap here](https://apple.com)")
        }.navigationTitle("MarkDown on Text")
    }
}
