//: Playground - noun: a place where people can play

import Cocoa
import Foundation

// representAsInteger
//
// PURPOSE: Take the array as input (eight elements assumed).
//          The input array represents a number encoded in base 2 (binary).
//          Return the input array as a binary integer literal and also actually as an integer.
func representAsInteger(number : [Int]) -> (binaryIntegerLiteral: String, integer: Int) {
    
    // String representation of the number as a binary integer literal
    var binaryIntegerLiteral = "0b"

    // Declare the integer value
    var integerValue = 0
    
    // Iterate over each "bit" or element in the array in the
    for (index, bit) in number.enumerate() {
        
        // What element of the array is this?
        print("element of array is \(index)")
        
        // What bit of the binary number is this?
        let bitPosition = 7 - index
        print("value of bit \(bitPosition) is \(bit)")
        
        // Append this "bit" to the string representation of the binary integer literal
        binaryIntegerLiteral += String(bit)
        
        // Add the value of this "bit" to the integer representation if the bit is "high" or "on"
        if (bit == 1) {
            integerValue += Int( pow(Float(2), Float(bitPosition)) )
        }
        
    }
    
    // Print the completed string representation of the binary integer literal
    print("Binary integer literal (base 2 representation) is: \(binaryIntegerLiteral)")

    // Print the integer representation
    print("Integer (base 10 representation) is: \(integerValue)")
    
    // Print a couple of empty lines
    print("\n\n")
    
    // Return the binary integer literal as an integer
    return (binaryIntegerLiteral, integerValue)
    
}

// Declare a number as an array of 8 bits (a byte) – a binary representation of an integer
var sixteen = [0, 0, 0, 1, 0, 0, 0, 0]

// Represent the binary number as an integer
var sixteenAsInteger = representAsInteger(sixteen)

// Show the return values
sixteenAsInteger.binaryIntegerLiteral
sixteenAsInteger.integer

// Declare a number as an array of 8 bits (a byte) – a binary representation of an integer
var fourteen = [0, 0, 0, 0, 1, 1, 1, 0]

// Represent the binary number as an integer
var fourteenAsInteger = representAsInteger(fourteen)

// Show the return values
fourteenAsInteger.binaryIntegerLiteral
fourteenAsInteger.integer

// Create an array of these values
var numbersToSort = [sixteen, fourteen]
