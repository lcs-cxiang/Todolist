//
//  ContentView.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    @State var newItemDescription = ""
    @State var searchText = ""
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ItemView(title: "Study for Chemistry quiz",
                             done: false)
                   
                    ItemView(title: "Finished Computer Science assignment",       done: true)
                    
                    ItemView(title: "Go for a run around Campus",
                             done: true)
                    
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD"){
                        
                    }
                    .font(.caption)
                }
                .padding(20)
            }
            .navigationTitle("To do")
            .padding()
        }
    }
}

#Preview {
    LandingView()
}

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: {
                Text(title)
            },icon: {
                Image(systemName: done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}
