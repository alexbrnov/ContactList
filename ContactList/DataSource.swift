//
//  DataSource.swift
//  ContactList
//
//  Created by Alexandr Baranov on 27.10.2023.
//

final class DataStore {
    static let shared = DataStore()
    
    let firstnames: [String] = [
        "Oleg",
        "Alex",
        "Jacob",
        "Israel",
        "Ivan",
        "John",
        "Vasily",
        "Cory",
        "Alexey",
        "Walter"
    ]
    
    let surnames: [String] = [
        "Jackson",
        "Ivanov",
        "Sandhagen",
        "Isaacson",
        "Jones",
        "Rogan",
        "McDouglas",
        "Jefferson",
        "Washington",
        "Romanov"
    ]
    
    let phoneNumbers: [String] = [
        "+7 (123) 456-78-90",
        "+7 (234) 567-89-01",
        "+7 (345) 678-90-12",
        "+7 (456) 789-01-23",
        "+7 (567) 890-12-34",
        "+7 (678) 901-23-45",
        "+7 (789) 012-34-56",
        "+7 (890) 123-45-67",
        "+7 (901) 234-56-78",
        "+7 (012) 345-67-89"
    ]
    
    let emails: [String] = [
        "user1@example.com",
        "user2@example.com",
        "user3@example.com",
        "user4@example.com",
        "user5@example.com",
        "user6@example.com",
        "user7@example.com",
        "user8@example.com",
        "user9@example.com",
        "user10@example.com"
    ]
    
    private init() {}
}
