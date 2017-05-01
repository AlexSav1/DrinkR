//
//  Patron.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/27/17.
//
//

import UIKit

struct Patron {
    var firstName: String!
    var lastName: String!
    var email: String!
    var birthday: String!
    var photo: UIImage?
    
    init (firstName: String, lastName: String, email: String, birthday: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.birthday = birthday
    }
}



//extension Patron {
//    init(json: [String:AnyObject]) {
//        
//    }
//}
//
//class test {
//    let alique = Patron(json: [String:AnyObject])
//}
