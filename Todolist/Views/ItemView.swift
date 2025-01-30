//
//  ItemView.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-29.
//

import SwiftUI

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


#Preview {
    ItemView(title: "Have a nap", done: false)
    ItemView(title: "Eat lunch", done: false)
}
