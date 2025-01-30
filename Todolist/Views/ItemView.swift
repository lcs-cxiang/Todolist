//
//  ItemView.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-29.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem: TodoItem
    
    var body: some View {
        Label(
            title: {
                Text(currentItem.title)
            },icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
            }
        )
    }
}


#Preview {
    List{
        ItemView(currentItem: firstItem)
        ItemView(currentItem: secondItem)
    }
}
