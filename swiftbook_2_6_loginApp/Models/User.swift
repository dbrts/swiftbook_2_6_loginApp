//
//  User.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 05.10.2022.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            username: "log",
            password: "pass",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let division: String
    let occupation: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Геннадий",
            surname: "Добрецов",
            company: "inDrive",
            division: "Data department",
            occupation: "ML Engineer",
            bio: "съешь же ещё этих мягких французских булок, да выпей чаю съешь же ещё этих мягких французских булок, да выпей чаю. съешь же ещё этих мягких французских булок, да выпей чаю съешь же ещё этих мягких французских булок, да выпей чаю съешь же ещё этих мягких французских булок, да выпей чаю."
        )
    }
}
