//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Anvi Agarkar on 09/10/2024.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Do Quiz 5",
                 "Submit Econ Assignment",
                 "Take A Vacation",
                 "Bring the Awesome"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue: toDo)
                    } label: {
                        Text(toDo)
                    }
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
        
        
    }
}

#Preview {
    ToDoListView()
}
