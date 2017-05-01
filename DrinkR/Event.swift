//
//  Event.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/29/17.
//
//

import UIKit

enum Recurring {
    case oneTime
    case daily
    case weekly
}

class Event: NSObject {

    var name: String!
    var dateAndTime: String!
    var recurring: Recurring!
    
    init(name: String, date: String, recurring: Recurring) {
        self.name = name
        self.dateAndTime = date
        self.recurring = recurring
    }
    
}
