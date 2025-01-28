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
                    Text("Study for Chemistry quiz")
                    Text("Finish Computer Science assignment")
                    Text("Go for a run around campus")
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
