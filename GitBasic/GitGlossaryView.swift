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
                explanation: "Merge adalah proses menggabungkan dua branch yang berbeda menjadi satu.",
                example: "git merge feature-login",
                howTo: """
                1. Checkout ke branch utama: git checkout main
                2. Jalankan perintah merge: git merge <nama-branch>
                3. Selesaikan konflik jika ada, lalu commit perubahan.
                """),

        GitTerm(title: "Conflict",
                explanation: "Conflict terjadi ketika dua perubahan bertentangan dan Git tidak bisa menggabungkannya secara otomatis.",
                example: "Merge conflict di file `LoginView.swift`",
                howTo: """
                1. Buka file yang mengalami konflik.
                2. Edit bagian yang ditandai <<<<<<< dan >>>>>>>.
                3. Setelah selesai, lakukan git add dan git commit.
                """),

        GitTerm(title: "Remote",
                explanation: "Remote adalah repositori Git yang disimpan di server lain (seperti GitHub atau GitLab).",
                example: "git remote add origin https://github.com/user/repo.git",
                howTo: """
                1. Gunakan 'git remote -v' untuk melihat daftar remote.
                2. Tambahkan remote baru dengan 'git remote add <name> <url>'.
                3. Push/pull menggunakan remote name, misalnya 'git push origin main'.
                """),

        GitTerm(title: "Clone",
                explanation: "Clone adalah proses menyalin repositori remote ke komputer lokal.",
                example: "git clone https://github.com/user/repo.git",
                howTo: """
                1. Salin URL repositori dari GitHub.
                2. Buka terminal dan jalankan: git clone <url>
                3. Repositori akan disalin ke folder lokal.
                """),

        GitTerm(title: "Branch",
                explanation: "Branch adalah cabang pengembangan dalam Git yang memungkinkan kerja paralel.",
                example: "git branch feature-login",
                howTo: """
                1. Buat branch baru: git branch <nama-branch>
                2. Pindah ke branch tersebut: git checkout <nama-branch>
                3. Setelah selesai, gabungkan ke main dengan merge.
                """),

        GitTerm(title: "Stash",
                explanation: "Stash menyimpan sementara perubahan yang belum di-commit agar kamu bisa berpindah branch.",
                example: "git stash",
                howTo: """
                1. Simpan perubahan: git stash
                2. Lihat daftar stash: git stash list
                3. Kembalikan perubahan: git stash apply atau git stash pop
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
