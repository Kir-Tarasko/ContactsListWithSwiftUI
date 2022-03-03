//
//  Person.swift
//  ContactsListWithSwiftUI
//
//  Created by Кирилл Тараско on 03.03.2022.
//

import Foundation

struct Human {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}


extension Human {
    
    static func getPerson() -> [Human] {
        
        var humans:[Human] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        
        
        for index in 0..<names.count {
            let human = Human(name: names[index], surname: surnames[index], phoneNumber: phones[index], email: emails[index])
            humans.append(human)
        }
        return humans
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
