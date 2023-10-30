//
//  SwiftUIView.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 30/10/2023.
//
import CoreData
import SwiftUI

struct FilteredList<T: NSManagedObject, Content: View>: View {
    @FetchRequest var fetchRequest: FetchedResults<T>
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequest, id: \.self) { item in
            content(item)
        }
    }
    
    
    init(filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content ){
        _fetchRequest = FetchRequest<T>(sortDescriptors: [], predicate: NSPredicate(format: "%k BEGINSWITH %@", filterKey, filterValue))
        self.content = content
    }
}
