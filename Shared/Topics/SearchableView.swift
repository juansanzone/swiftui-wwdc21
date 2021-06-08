//
//  SearchableView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct SearchableView: View {
    
    @State private var searchTerm = ""
    
    var body: some View {
        List {
            Text("Row 1")
            Text("Row 2")
            Text("Row 3")
            Text("Row 4")
        }
        .searchable(text: $searchTerm)
        .navigationTitle(".searchable")
    }
}
