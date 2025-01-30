//
//  TodolistApp.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-28.
//
import SwiftData
import SwiftUI

@main
struct TodolistApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TodoItem.self)
        }
    }
}
