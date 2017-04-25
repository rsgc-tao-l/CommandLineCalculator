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
        print("")
        print("I will help you collect input from the user so that you can build a command-line calculator.")
        print("")
    }
    
    /**
     Returns a string collected via a command line prompt.
     
     - parameter with: The message that will be shown to the user when input is requested.
     
     */
    func getStringInput(with prompt: String) -> String {
        
        var inputProvided : String = ""
        
        repeat {
            
            // Show the prompt
            print(prompt, terminator: "")
            
            // Get the user's input
            var input : String?
            input = readLine()
            
            // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
            if let notNilInput = input {
                
                // Save the input given
                inputProvided = notNilInput
                
            }
            
        } while inputProvided == ""
        
        // Send the input back
        return inputProvided
        
    }
    
    /**
     Returns a string collected via a command line prompt.
     
     - parameter with: The message that will be shown to the user when input is requested.
     
     */
    func getDoubleInput(with prompt: String) -> Double {
        
        var inputProvided : Double?
        
        repeat {
            
            // Show the prompt
            print(prompt, terminator: "")
            
            // Get the user's input
            var input : String?
            input = readLine()
            
            // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
            if let notNilInput = input {
                
                if let doubleInput = Double(notNilInput) {
                    
                    // Save the input given
                    inputProvided = doubleInput
                    
                }
                
            }
            
        } while inputProvided == nil
        
        // Send the input back
        return inputProvided!
        
    }
    
    /**
     Returns an integer collected via a command line prompt.
     
     - parameter lowerBoundary: The lowest acceptable value
     - parameter upperBoundary: The highest acceptable value
     
     */
    func getIntegerInput(with prompt: String, lowerBoundary: Int, upperBoundary: Int) -> Int {
        
        var inputProvided : Int = Int.min
        
        repeat {
            
            // Show the prompt
            print(prompt, terminator: "")
            
            // Get the user's input
            var input : String?
            input = readLine()
            
            // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
            if let notNilInput = input {
                
                if let integerInput = Int(notNilInput) {
                    
                    if integerInput >= lowerBoundary && integerInput <= upperBoundary {
                        
                        // Save the input given
                        inputProvided = integerInput
                        
                    }
                    
                    
                }
                
            }
            
        } while inputProvided == Int.min
        
        // Send the input back
        return inputProvided
        
    }
    
}
