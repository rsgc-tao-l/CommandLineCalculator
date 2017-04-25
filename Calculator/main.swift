import Foundation

// Ask the user what function should be performed
func printCalculatorMenu() {
    print("Welcome to the Command Line Calculator!")
    print("---------------------------------------")
    print("")
    print("1 - Add")
    print("2 - Subtract")
    print("3 - Multiply")
    print("4 - Divide")
    print("5 - Quit program")
    print("")
}

// Create an instance of the CommandLineHelper class.
var helperOne = CommandLineHelper(username: "Mr. Gordon")

// Be greeted
helperOne.greeting()

// Show the menu
printCalculatorMenu()

// Ask the user for their choice
var selection = helperOne.getIntegerInput(with: "What is your selection? ",
                                          lowerBoundary: 1,
                                          upperBoundary: 5)

// Perform the appropriate calculation based on the user's choice
var myCalculator = Calculator()
if selection == 1 {
    
    // Get the input
    var x = helperOne.getDoubleInput(with: "What is the first value? ")
    var y = helperOne.getDoubleInput(with: "What is the second value? ")
    
    // Determine the result
    print("Result is " + String(myCalculator.add(this: x, that: y)) )
    
} else if selection == 2 {
    
    // Get the input
    var x = helperOne.getDoubleInput(with: "What is the first value? ")
    var y = helperOne.getDoubleInput(with: "What is the second value? ")
    
    // Determine the result
    print("Result is " + String(myCalculator.minus(this: x, that: y)) )
    
    
} else if selection == 3 {
    // Get the input
    var x = helperOne.getDoubleInput(with: "What is the first value? ")
    var y = helperOne.getDoubleInput(with: "What is the second value? ")
    
    // Determine the result
    print("Result is " + String(myCalculator.multiply(this: x, that: y)) )
} else if selection == 4{
    // Get the input
    var x = helperOne.getDoubleInput(with: "What is the first value? ")
    var y = helperOne.getDoubleInput(with: "What is the second value? ")
    
    // Determine the result
    print("Result is " + String(myCalculator.divide(this: x, that: y)) )
}
















