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
                explanation: "Merge is the process of combining changes from one branch into another.",
                example: "git merge feature-login",
                howTo: """
                1. Switch to the target branch: git checkout main
                2. Run the merge command: git merge <branch-name>
                3. Resolve any conflicts and commit the changes.
                """),

        GitTerm(title: "Conflict",
                explanation: "A conflict happens when Git cannot automatically resolve differences between two branches.",
                example: "Merge conflict in `LoginView.swift`",
                howTo: """
                1. Open the conflicted file.
                2. Manually edit the sections marked with <<<<<<< and >>>>>>>.
                3. After resolving, run git add and git commit.
                """),

        GitTerm(title: "Remote",
                explanation: "A remote is a version of your repository hosted on the internet (like GitHub or GitLab).",
                example: "git remote add origin https://github.com/user/repo.git",
                howTo: """
                1. Use 'git remote -v' to view remote repositories.
                2. Add a remote: git remote add <name> <url>
                3. Push or pull using the remote name, e.g., 'git push origin main'
                """),

        GitTerm(title: "Clone",
                explanation: "Clone creates a local copy of a remote repository.",
                example: "git clone https://github.com/user/repo.git",
                howTo: """
                1. Copy the repository URL from GitHub.
                2. Run: git clone <url> in your terminal.
                3. The repository will be downloaded into a new folder.
                """),

        GitTerm(title: "Branch",
                explanation: "A branch lets you work on a separate line of development without affecting the main codebase.",
                example: "git branch feature-login",
                howTo: """
                1. Create a new branch: git branch <branch-name>
                2. Switch to it: git checkout <branch-name>
                3. When done, merge it into main.
                """),

        GitTerm(title: "Stash",
                explanation: "Stash temporarily saves uncommitted changes so you can switch branches cleanly.",
                example: "git stash",
                howTo: """
                1. Save current changes: git stash
                2. View all stashes: git stash list
                3. Reapply changes: git stash apply or git stash pop
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
