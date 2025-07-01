//
//  GitBasicApp.swift
//  GitBasic
//
//  Created by Dini on 25/04/25.
//

import SwiftUI
import SwiftData

@main
struct GitBasicApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [LearnedEntry.self])
    }
}
