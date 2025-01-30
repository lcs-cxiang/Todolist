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
                   
                    ItemView(currentItem: firstItem)
                    ItemView(currentItem: secondItem)
                    ItemView(currentItem: thirdItem)
                    
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


