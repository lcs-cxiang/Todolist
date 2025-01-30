//
//  ContentView.swift
//  Todolist
//
//  Created by Chujun Xiang on 2025-01-28.
//
import SwiftData
import SwiftUI

struct LandingView: View {
    @State var newItemDescription = ""
    @State var searchText = ""
    @Environment(\.modelContext) var modelContext
    @State var todos: [TodoItem] = exampleItems
    var body: some View {
        NavigationView {
            VStack {
                List($todos){ $todo in
                    ItemView(currentItem: $todo)
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                        .onTapGesture{
                            todo.done.toggle()
                        }
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    
                    Button("ADD"){
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
            }
            .navigationTitle("To do")
            .padding()
        }
    }
    
    func createToDo(withTitle title: String){
        let todo = TodoItem(
            title: title,
            done: false
        )
        todos.append(todo)
    }
    
    func delete(_ todo: TodoItem){
        todos.removeAll{ currentItem in
            currentItem.id == todo.id
        }
    }
}


//#Preview {
//    LandingView()
//}


