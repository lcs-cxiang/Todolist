//
//  ContentView.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-28.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationView {
            VStack {
                List{
                    Text("Study for Chemistry quiz")
                    Text("Finish Computer Science assignment")
                    Text("Go for a run around campus")
                }
            }
            .navigationTitle("To do")
            .padding()
        }
    }
}

#Preview {
    LandingView()
}
