//
//  DetailView.swift
//  GitGlossary
//
//  Created by Afina R. Vinci on 28/04/25.
//

import SwiftUI
struct GitGlossaryDetailView: View {
    let term: GitTerm
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("📖 Definition")
                .font(.headline)
            Text(term.explanation)
            
            Text("🔧 How To")
                .font(.headline)
            Text(term.howTo)
                .font(.system(.body, design: .monospaced))
            
            Text("🧪 Example")
                .font(.headline)
            Text(term.example)
            
            Spacer()
        }
        .padding()
        .navigationTitle(term.title)
    }
}

//#Preview {
//    DetailView(term: GitTerm.sample)
//}
