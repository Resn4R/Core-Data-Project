//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 26/10/2023.
//

import CoreData
import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
