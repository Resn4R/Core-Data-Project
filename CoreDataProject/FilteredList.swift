//
//  SwiftUIView.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 30/10/2023.
//

import SwiftUI

struct FilteredList: View {
    @FetchRequest var fetchRequest: FetchedResults<Singer>
    var body: some View {
        List(fetchRequest, id: \.self) { singer in
            Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
        }
    }
    
    
    init(filter: String){
        _fetchRequest = FetchRequest<Singer>(sortDescriptors: [], predicate: NSPredicate(format: "lastNmae BEGINSWITH %@", filter))
    }
}

#Preview {
    FilteredList(filter: "A")
}
