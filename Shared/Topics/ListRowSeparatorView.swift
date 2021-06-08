//
//  ListRowSeparatorView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct ListRowSeparatorView: View {
    
    var body: some View {
        List {
            Text("Hidden cell row bottom separator")
            Text("Hidden cell row bottom separator")
                .listRowSeparator(.hidden)
            Text("Visible cell row bottom separator")
            Text("Cell row")
        }.navigationTitle(".listRowSeparator")
    }
}
