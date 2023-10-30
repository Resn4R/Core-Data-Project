//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Vito Borghi on 30/10/2023.
//
//

import Foundation
import CoreData


extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firstsName: String?
    @NSManaged public var lastName: String?

    var wrappedFirstName: String {
        firstsName ?? "Unknown"
    }
    
    var wrappedLastName: String {
        lastName ?? "Unknown"
    }
}

extension Singer : Identifiable {

}
