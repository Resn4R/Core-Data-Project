//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 26/10/2023.
//

import SwiftUI

struct ContentView: View {
    @Environment (\.managedObjectContext) var moc
    @FetchRequest (sortDescriptors: [], predicate: NSPredicate(format: "universe == %@", "Star Wars")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknown")
            }
            Button("Add Examples") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Trek"
                
                let ship2 = Ship(context: moc)
                ship1.name = "Defiant"
                ship1.universe = "Star Trek"
                
                let ship3 = Ship(context: moc)
                ship1.name = "Millennium Falcon"
                ship1.universe = "Star Wars"
                
                try? moc.save()
            }
        }
    }
}

#Preview {
    ContentView()
}

