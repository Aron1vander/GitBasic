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
            explanation: "Commit adalah 'snapshot' atau rekaman dari repository Anda pada waktu tertentu. Ini adalah operasi dasar dalam Git yang menyimpan perubahan ke repository lokal.",
            example: "git commit -m \"Menambahkan fitur login\"",
            howTo: """
            1. Jalankan `git add <nama_file>` untuk menambahkan perubahan ke area staging.
            2. Jalankan `git commit -m \"Pesan commit Anda\"` untuk menyimpan perubahan.
            """),
        GitTerm(title: "Stage",
            explanation: "Stage (atau disebut juga 'index') adalah area persiapan tempat Anda mengumpulkan perubahan yang akan dimasukkan dalam commit berikutnya. Ini memungkinkan Anda untuk memilih perubahan mana yang akan direkam.",
            example: "git add nama_file.txt",
            howTo: """
            1. Modifikasi file di dalam project Anda.
            2. Gunakan perintah `git add <nama_file>` atau `git add .` untuk menambahkan satu atau semua file yang diubah ke area stage.
            """),
        GitTerm(title: "Repository",
            explanation: "Repository (sering disingkat 'repo') adalah direktori atau folder yang berisi semua file proyek Anda dan seluruh riwayat revisi dari setiap file. Ini adalah unit dasar penyimpanan di Git.",
            example: "git init # Membuat repository baru",
            howTo: """
            1. Untuk membuat repository lokal baru: `git init` di dalam direktori proyek Anda.
            2. Untuk mendapatkan salinan repository yang sudah ada: `git clone <URL_repository>`
            """),
        GitTerm(title: "Push",
            explanation: "Push adalah perintah untuk mengirim commit dari repository lokal Anda ke repository remote (seperti di GitHub atau GitLab). Ini adalah cara Anda berbagi perubahan dengan orang lain.",
            example: "git push origin main",
            howTo: """
            1. Pastikan Anda sudah melakukan commit pada perubahan lokal Anda.
            2. Jalankan `git push <nama_remote> <nama_branch>` (misalnya, `git push origin main`).
            """),
        GitTerm(title: "Pull",
            explanation: "Pull adalah perintah untuk mengambil (fetch) dan menggabungkan (merge) perubahan dari repository remote ke repository lokal Anda. Ini digunakan untuk memperbarui proyek lokal Anda dengan perubahan terbaru dari tim.",
            example: "git pull origin main",
            howTo: """
            1. Pastikan direktori kerja Anda bersih (tidak ada perubahan yang belum di-commit).
            2. Jalankan `git pull <nama_remote> <nama_branch>` (misalnya, `git pull origin main`).
            """),
        GitTerm(title: "Pull Request",
            explanation: "Pull Request (PR) adalah mekanisme untuk mengusulkan perubahan pada sebuah repository. Anda mengajukan perubahan dari branch Anda untuk ditinjau oleh orang lain sebelum digabungkan (merge) ke branch utama.",
            example: "Membuat Pull Request di antarmuka web GitHub atau GitLab.",
            howTo: """
            1. Push branch Anda ke repository remote.
            2. Buka repository tersebut di platform web (GitHub, GitLab, dll.).
            3. Klik tombol "New Pull Request" atau "Create Pull Request".
            4. Pilih branch sumber dan tujuan, lalu ajukan.
            """),
        GitTerm(title: "Merge",
            explanation: "Merge adalah proses menggabungkan riwayat dari dua atau lebih branch menjadi satu. Ini digunakan untuk mengintegrasikan perubahan dari satu branch ke branch lainnya.",
            example: "git merge feature-login",
            howTo: """
            1. Pindah ke branch tujuan (misalnya, `git checkout main`).
            2. Jalankan `git merge <nama_branch_sumber>` untuk menggabungkan perubahan dari branch sumber.
            """),
        GitTerm(title: "Conflict",
            explanation: "Conflict (konflik) terjadi ketika Git tidak dapat secara otomatis menggabungkan perubahan dari dua commit yang berbeda karena ada perubahan yang tumpang tindih pada baris kode yang sama.",
            example: "Konflik ditandai di dalam file dengan `<<<<<<<`, `=======`, `>>>>>>>`.",
            howTo: """
            1. Identifikasi file yang mengalami konflik (ditandai oleh Git saat merge atau pull gagal).
            2. Buka file tersebut dan hapus penanda konflik (`<<<<<<<`, `=======`, `>>>>>>>`).
            3. Edit file untuk memilih perubahan yang benar atau menggabungkannya secara manual.
            4. Simpan file, lalu jalankan `git add <nama_file>` dan `git commit` untuk menyelesaikan merge.
            """),
        GitTerm(title: "Remote",
            explanation: "Remote adalah versi dari repository Anda yang di-hosting di server lain, biasanya di internet (contoh: GitHub, GitLab). Ini berfungsi sebagai titik sinkronisasi untuk berkolaborasi dengan tim.",
            example: "git remote add origin https://github.com/user/repo.git",
            howTo: """
            1. Untuk melihat remote yang ada: `git remote -v`.
            2. Untuk menambahkan remote baru: `git remote add <nama_remote> <URL_repository>`.
            3. Untuk menghapus remote: `git remote remove <nama_remote>`.
            """),
        GitTerm(title: "Clone",
            explanation: "Clone adalah perintah untuk membuat salinan lengkap dari sebuah repository yang sudah ada (biasanya dari remote) ke komputer lokal Anda. Salinan ini mencakup semua file, branch, dan riwayat.",
            example: "git clone https://github.com/user/repo.git",
            howTo: """
            1. Dapatkan URL dari repository remote.
            2. Jalankan `git clone <URL_repository>` di terminal Anda.
            """),
        GitTerm(title: "Branch",
            explanation: "Branch adalah sebuah 'garis pengembangan' independen dalam repository. Branch memungkinkan Anda untuk mengerjakan fitur baru atau perbaikan bug secara terisolasi tanpa mengganggu basis kode utama (seperti branch 'main').",
            example: "git branch feature-baru",
            howTo: """
            1. Untuk membuat branch baru: `git branch <nama_branch>`.
            2. Untuk berpindah ke branch lain: `git checkout <nama_branch>`.
            3. Untuk membuat dan langsung berpindah ke branch baru: `git checkout -b <nama_branch>`.
            """),
        GitTerm(title: "Stash",
            explanation: "Stash digunakan untuk menyimpan sementara perubahan yang sedang Anda kerjakan (yang belum siap di-commit) sehingga Anda bisa beralih ke tugas lain. Anda dapat menerapkan kembali perubahan ini nanti.",
            example: "git stash",
            howTo: """
            1. Saat Anda memiliki perubahan yang belum di-commit, jalankan `git stash` untuk menyimpannya.
            2. Bekerja pada tugas lain (misalnya, checkout branch lain).
            3. Untuk menerapkan kembali perubahan yang disimpan: `git stash pop` atau `git stash apply`.
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
