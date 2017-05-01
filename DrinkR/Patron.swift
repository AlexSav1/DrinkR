//
//  Patron.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/27/17.
//
//

import UIKit

class Patron: NSObject {

    var firstName: String!
    var lastName: String!
    var email: String!
    var birthday: String!
    
    var photo: UIImage?
    
    
    init(firstName: String, lastName: String, email: String, birthday: String){
        
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.birthday = birthday
        
    }
    
}
