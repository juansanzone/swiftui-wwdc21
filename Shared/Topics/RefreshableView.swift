//
//  RefreshableView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct RefreshableView: View {
    
    @State private var refreshCount: Int = 0
    
    var body: some View {
        List(1..<10) { row in
            Text("Refresh count \(refreshCount)")
        }.refreshable {
            // refresh stuff here!
            refreshCount+=1
        }
        .navigationTitle(".refreshable")
    }
}
