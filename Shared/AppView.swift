//
//  AppView.swift
//  Shared
//
//  Created by Juan Sanzone on 08/06/2021.
//

import SwiftUI

struct AppView: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                Section(
                    header: Text("Highlights WWDC21"),
                    footer: Text("Most of examples extracted from [hackingwithswift](https://www.hackingwithswift.com/articles/235/whats-new-in-swiftui-for-ios-15)")
                ) {
                    NavigationLink(destination: RefreshableView()) {
                        Text(".refreshable")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: SearchableView()) {
                        Text(".searchable")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: SwipeActionsView()) {
                        Text(".swipeActions")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ListRowSeparatorView()) {
                        Text(".listRowSeparator")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: AsyncImageView()) {
                        Text("AsyncImage")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: MarkDownView()) {
                        Text("Markdown support on Text")
                    }.buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: FocusStateView()) {
                        Text("@FocusState")
                    }.buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("SwiftUI")
         }
    }
}
