//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 26/10/2023.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment (\.managedObjectContext) var moc
    
    @State private var lasNameFilter = "A"
    
    var body: some View {
        VStack {
            FilteredList(filter: lasNameFilter)
            
            Button ("Add Examples") {
                let taylor = Singer(context: moc)
                taylor.firstsName = "Taylor"
                taylor.lastName = "Swift"
                
                let adele = Singer(context: moc)
                adele.firstsName = "Adele"
                adele.lastName = "Adkins"
                
                let eddy = Singer(context: moc)
                eddy.firstsName = "Ed"
                taylor.lastName = "Sheeran"
                
                try? moc.save()
            }
            
            Button("Show A"){
                lasNameFilter = "A"
            }
            Button("Show S") {
                lasNameFilter = "S"
            }
        }
    }
}

#Preview {
    ContentView()
}

