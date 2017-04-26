
import Foundation

class Calculator {
    
    // MARK: Properties
    
    // MARK: Initializer
    
    // MARK: Functions / Methods
    func add(this : Double, that: Double) -> Double {
        return this + that
    }
    func minus(this: Double, that: Double) -> Double {
        return this - that
    }
    func divide(this: Double, that: Double) -> Double {
        return this / that
    }
    func multiply(this: Double, that: Double) -> Double {
        return this * that
    }
    func Exponents(this: Double, that: Double) -> Double {
        var u = this
        if this == 0 {
            u = 0
        }else if that == 0 {
            u = 1
        }else {
            for i in stride(from: 1, to: that, by: 1){
                u = u * this + 0*i
            }
        }
        return u
    }
}


