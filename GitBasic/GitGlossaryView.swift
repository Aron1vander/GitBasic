//
//  GitGlossaryView.swift
//  GitBasic
//
//  Created by Dini on 25/04/25.
//

import SwiftUI

struct GitTerm: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let explanation: String
    let example: String
    let howTo: String
}


struct GitGlossaryView: View {
    
    @State private var sampleTerms = [
        GitTerm(title: "Commit",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Stage",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Repository",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),

        GitTerm(title: "Push",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Pull",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Pull Request",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Merge",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Conflict",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Remote",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Clone",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Branch",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """),
        GitTerm(title: "Stash",
                explanation: "A commit is a snapshot of your project at a specific time.",
                example: "git commit -m \"Added login button\"",
                howTo: """
        1. Click Integrate > Commit
        2. Type the commit message
        e. sdla,dlsa
        """)
    ]
    
    
    var body: some View {
        List(sampleTerms) { term in
            NavigationLink(destination: GitGlossaryDetailView(term: term)) {
                Text(term.title)
            }
        }
        .navigationTitle("Git Glossary")
    }
}

#Preview {
    NavigationStack {
        GitGlossaryView()
    }
}
