//
//  Contact.swift
//  ContactApp
//
//  Created by Наташа Яковчук on 02.01.2024.
//

import Foundation
import CoreData

final class Contact: NSManagedObject {
    
    @NSManaged var dob: Date
    @NSManaged var email: String
    @NSManaged var isFavourite: Bool
    @NSManaged var name: String
    @NSManaged var notes: String
    @NSManaged var phoneNumber: String
    
    override func awakeFromInsert() {
        super.awakeFromInsert()
        setPrimitiveValue(Date.now, forKey: "dob")
        setPrimitiveValue(false, forKey: "isFavourite")
    }
}
