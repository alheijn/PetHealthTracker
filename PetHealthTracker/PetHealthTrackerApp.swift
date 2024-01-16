//
//  PetHealthTrackerApp.swift
//  PetHealthTracker
//
//  Team: Albert Heinrichs, Patrizia Neubauer
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
