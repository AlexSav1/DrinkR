//
//  Event.swift
//  DrinkR
//
//  Created by Alex Laptop on 4/29/17.
//
//

import UIKit

class Event {
    enum Recurring: Int {
        case oneTime
        case daily
        case weekly
    }
    
    var name: String!
    var dateAndTime: String!
    var recurring: Recurring!
    
    init(name: String, date: String, recurring: Recurring) {
        self.name = name
        self.dateAndTime = date
        self.recurring = recurring
    }
}
