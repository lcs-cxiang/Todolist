//
//  Todolist.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-29.
//

import SwiftData

@Model
class TodoItem: Identifiable {
    var title: String
    var done : Bool
    
    init(title: String, done: Bool){
        self.title = title
        self.done = done
    }
}

let firstItem = TodoItem(title: "Study for Chemistry quiz", done: false)

let secondItem = TodoItem(title: "Finish Computer Science assignment", done: true)

let thirdItem = TodoItem(title: "Go for a run around campus", done: false)


let exampleItems = [
    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,
]
