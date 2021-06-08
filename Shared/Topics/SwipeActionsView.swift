//
//  SwipeActionsView.swift
//  WWDC21
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct SwipeActionsView: View {
    
    var body: some View {
        List {
            Text("Swipe me").swipeActions {
                // Delete button
                Button(role: .destructive) {
                    // Do action here!
                } label: {
                    Label("Delete", systemImage: "trash.fill")
                }
                
                // Generic button
                Button("Action button") {
                    // Do action here!
                }.tint(.blue)
                
                // Button with custom icon
                Button {
                    // Do action here!
                } label: {
                    Label("Play", systemImage: "play.circle.fill")
                }.tint(.green)
            }
            
            Text("Row 2")
            Text("Row 3")
            
            // allowsFullSwipe - false
            Text("Swipe me too!").swipeActions(allowsFullSwipe: false) {
                Button("Action") {
                    // Do action here!
                }.tint(.blue)
            }
        }
        .navigationTitle(".swipeActions")
    }
}
