//
//  Person.swift
//  Homework 3
//
//  Created by Brian Mendez on 8/12/14.
//  Copyright (c) 2014 Brian Mendez. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String
    var lastName : String
//    var image : UIImage?
    
    init(firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func fullName() -> String {
        return "\(self.firstName) \(self.lastName)"
    }
}