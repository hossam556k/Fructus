//
//  FructusApp.swift
//  Fructus
//
//  Created by MacBook Pro on 20/10/2026.
//

import SwiftUI
import CoreData

@main
struct FructusApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
