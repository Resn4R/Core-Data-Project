//
//  ContentView.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 26/10/2023.
//

import SwiftUI

struct Strudent: Hashable {
    let name: String
}


struct ContentView: View {
    let students = [Strudent(name: "Nice"), Strudent(name: "Holy Moly")]
    var body: some View {
        List( students, id: \.hashValue) { student in
            Text(student.name)
        }
    }
}

#Preview {
    ContentView()
}
