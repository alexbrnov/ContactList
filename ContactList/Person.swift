//
//  Person.swift
//  ContactList
//
//  Created by Alexandr Baranov on 27.10.2023.
//

struct Person {
    let firstname: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstname) \(surname)"
    }

    static func getContactList() -> [Person] {
        var persons: [Person] = []
   
        let dataStore = DataStore.shared
        
        let firstnames = dataStore.firstnames.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let iterationCount = min(
            firstnames.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                firstname: firstnames[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
