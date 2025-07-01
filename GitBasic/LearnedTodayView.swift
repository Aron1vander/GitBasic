//
//  LearnedTodayView.swift
//  GitBasic
//
//  Created by Dini on 25/04/25.
//

import SwiftUI
import SwiftData

struct LearnedTodayView: View {
    @State var name = ""
    @State var note = ""
    @Environment(\.modelContext) var context
    @Query var entries: [LearnedEntry]
    @State var selectedEntry: LearnedEntry?
    
    var body: some View {
        VStack(spacing: 15) {
            TextField("Your Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextEditor(text: $note)
                .frame(height: 150)
                .border(Color.gray.opacity(0.5), width: 1)
                .padding(.horizontal)
            
            Button("Save Entry") {
                let trimmedName = name.trimmingCharacters(in: .whitespaces)
                let trimmedNote = note.trimmingCharacters(in: .whitespaces)
                guard !trimmedName.isEmpty && !trimmedNote.isEmpty else { return }
                
                let entry = LearnedEntry(name: trimmedName, note: trimmedNote)
                context.insert(entry)
                name = ""
                note = ""
            }
            
            List {
                ForEach(entries) { entry in
                    VStack(alignment: .leading) {
                        Text("👤 \(entry.name)").bold()
                        Text(entry.note)
                    }
                    .onTapGesture {
                        selectedEntry = entry
                    }
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        context.delete(entries[index])
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("What I learned")
        .task {
            try? context.save()
        }
        .sheet(item: $selectedEntry) { entry in
            EditLearnedEntryView(entry: entry)
        }
    }
}

struct EditLearnedEntryView: View {
    @Bindable var entry: LearnedEntry
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Edit Name", text: $entry.name)
                TextEditor(text: $entry.note)
                    .frame(height: 150)
            }
            .navigationTitle("Edit Entry")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    do {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: LearnedEntry.self, configurations: config)
        return LearnedTodayView()
            .modelContainer(container)
    } catch {
        fatalError("Failed to create container")
    }
}
