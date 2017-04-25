//
//  CommandLineHelper.swift
//  Calculator
//
//  Created by Russell Gordon on 4/25/17.
//  Copyright © 2017 Russell Gordon. All rights reserved.
//

import Foundation

class CommandLineHelper {
    
    // MARK: Properties
    // Any variables that need global scope (that is, need to be
    // available in any function / method below should be declared here
    var username : String
    
    // MARK: Initializer(s)
    // The initializer method(s) is/are used to set starting values for
    // properties in the class (see above).
    init(username: String) {
        
        // Here we set the username property (defined above) to whatever
        // value was passed to the initializer.
        // The 'self' is used to distinguish the value of 'username' passed
        // to the initializer also called 'username'
        self.username = username
    }
    
    // MARK: Function(s)/Method(s)
    // Here we define the behaviour(s) or functionality that this class should have.
    func greeting() {
        print("Hello " + username + ". It's a pleasure to meet you.")
        print("I will help you collect input from the user so that you can build a command-line calculator.")
    }
    
    
}
