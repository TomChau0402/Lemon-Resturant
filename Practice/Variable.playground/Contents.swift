import UIKit

// variable - var
// constants - let

var greeting = "Hello, playground"

let day = "thursday"
let dailyTemp = 75

print("today is \(day) and the temperture is \(dailyTemp) degrees.")

var temperature = 80
print("The temperture in the morning is: \(temperature)")
temperature = 85
print("The temperature in the afternoon is: \(temperature)")

temperature = dailyTemp
print("The Temperature in the evening is: \(temperature)")

// ---- Game Score__//

print("The game score")
let levelScore = 10
var gameScore = 0


gameScore += levelScore
print("the game score is: \(gameScore)")

var levelBonusScore = 10.0
levelBonusScore = 20

print ("The level bonus score is: \(levelBonusScore)")
gameScore += Int(levelBonusScore)
print("The final game score is: \(gameScore)")

let levelLowestScore = 10
let levelHighestScore = 100
let levels = 10

let levelScoreDiff = levelHighestScore - levelLowestScore
let levelAverageScore = Double(levelScoreDiff) / Double(levels)
print("The average score per level is: \(levelAverageScore)")



// int - 10
// double - 50.4
// string - "hello"

// mini-ex: define a let for a dish name and a var for it's order count.

let dishName = "pizza"
var orderCount = 2
print("\(dishName) order count is: \(orderCount)")

// Swift Datatypes
let dishName2: String = "Pasta"
let price:Double = 12.99
let inStock:Bool = true
let qty : Int = 3
      
      








