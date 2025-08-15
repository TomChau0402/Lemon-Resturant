import UIKit

//var greeting = "Hello, playground"

/*
 Arrays
 
 var arrayName = [value1, value2, value3]
 */

var dishes:[String] = ["Pizza", "Pasta", "Ramen"]
print (dishes)
print (dishes[0])
print (dishes[1])
print (dishes[2])
print(dishes.count)

// example 2

var prices:[Double] = [9.99, 10.50, 6.00]
print (prices[2])

let total = prices[0] + prices[1]
print("Total for two dishes \(total)")
print ("Total for two diess \(String(format: "%.2f", total))")

// Mini-Exercise1
// create an array with your top 3 desert adn print them

let deserts:[String] = ["Mango", "Strawberry", "Chocolate"]
print(deserts)

/*
 For loops
 
 Syntax
 for element in colleciton {
 // Do Something with element}
 */
var students:[String] = ["Alice", "Bob", "Charlie", "Tom", "Joseph", "Vonda", "Edward", "Justin", "Alexis"]

for student in students {
    print (student)
}

/* for Each
 Syntax
 collecton.forEach{ item in
 // Do something with element
 }
 */
students.forEach { student in
    print (student)
}
//Mini Exercise2
//Print the total number of desert using .count
print("total numbers of deserts is: \(deserts.count)")

// mini exercise 3
let calories:[Int] = [0, 150, 80]

for calorie in calories {
if calorie > 100 {
    print("high calorie \(calorie)")
        
    }
}
calories.forEach { calorie in
    if calorie > 100 {
        print("high calorie \(calorie)")
        
    }
}

