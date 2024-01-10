//
//  PetHealthTrackerApp.swift
//  PetHealthTracker
//
//  Created by Albert Heinrichs on 10.01.24.
//

import SwiftUI

@main
struct PetHealthTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
