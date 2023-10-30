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
    
    @FetchRequest(sortDescriptors: []) var countries: FetchedResults<Country>
    var body: some View {
        VStack {
            List {
                ForEach(countries, id: \.self) { country in
                    Section(country.wrappedFullName) {
                        ForEach(country.candyArray, id: \.self) { candy in
                            Text(candy.unwrappedName)
                        }
                    }
                }
            }
            Button("Add sample data") {
                let candy1 = Candy(context: moc)
                candy1.name = "Mars"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                
                let candy2 = Candy(context: moc)
                candy2.name = "Kit Kat"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                
                let candy3 = Candy(context: moc)
                candy3.name = "Twix"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "UK"
                candy1.origin?.fullName = "United Kingdom"
                
                let candy4 = Candy(context: moc)
                candy4.name = "Toblerone"
                candy1.origin = Country(context: moc)
                candy1.origin?.shortName = "CH"
                candy1.origin?.fullName = "Switzerland"
                
                try? moc.save()
            }
        }
    }
}

#Preview {
    ContentView()
}

