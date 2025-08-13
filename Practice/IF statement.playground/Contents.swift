import UIKit

// IF Else IF - Else

/*
 ---------SYNTAX-----------
 if condition1 {
 this block runs if condition1 is true} else if condition2 {
 this block runs if condition2 is true} else{
 this block runs if none of teh above conditions are true}
 
 */

// -----Example 1 --------
var waterTemp: Int = 125

if waterTemp >= 100 {
    print("Boiling the water")
}else{
    print("the water is not boiling")
}

// -------exmple 2---------

var position: Int = 13

if position == 1{
    print("you came first")
}else if position == 2{
    print( "you came second")
}else if position == 3{
    print( "you came third")
}else{
    print("You finished in position \(position). keep training")
    
}
// -------Example 3 ---------

var temperature = 84

if temperature >= 68 && temperature <= 75 {
    print("The temperture is just right")
}else{
    print("The temperture is too hot or cold")
}

// -----------example 4 -----------

var mainPower:Bool = false
var batteryPower: Bool = false

if mainPower == true || batteryPower == true{
    print( "I can use my phone")

}else{
    print( "you should find a charger")
}

/// -------Switch ---------
let table = 3

switch table {
case 1: print("you are in the garden")
case 2: print("you are in dining room")
default: print("Please wait to the seat")
}
