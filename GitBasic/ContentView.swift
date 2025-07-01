//
//  ContentView.swift
//  GitBasic
//
//  Created by Dini on 25/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Create a story") {
                    DefinitionView(title: "Create a story", definition: "My story is on the Whiteboard")
                }
                NavigationLink("Version Control") {
                    DefinitionView(title: "Version Control", definition: "Version control is a system that records changes to a file or set of files over time.")
                }
                NavigationLink("Git Glossary") {
                    GitGlossaryView()
                }   
                NavigationLink("Workflow") {
                    DefinitionView(title: "Workflow", definition: "A workflow is a defined sequence of steps or stages in a development cycle.")
                }
                NavigationLink("What I learned today") {
                    LearnedTodayView()
                }
            }
            .navigationTitle("Version Control")
        }
    }
}

struct DefinitionView: View {
    let title: String
    let definition: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(definition)
                .font(.body)
                .padding()
            Spacer()
        }
        .navigationTitle(title)
    }
}

#Preview {
    ContentView()
}
