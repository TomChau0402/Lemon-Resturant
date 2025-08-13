import UIKit

//-----Example 1-------

func great(person:String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
// function call
let message = great(person: "Alice")
print(message)
// -------Example 2 ------

func greeting(person: String,formally: Bool = false) -> String{
    if formally {
        return "Greeting, " + person + "!"
        
    }else{
        return "Hi" + person + "!"
    }
}

print(greeting(person: "Person",formally: true))
print(greeting(person: "Jane",formally: false))


///-----Example 3 ---------
func calculateTotal(price: Double, quantity:Int) ->Double{
    return price * Double(quantity)
}
let total = calculateTotal(price: 15.445, quantity: 3)
print(total)

// mimi example: Create a function deliveryTime(minute:) that returns "Ready in X minustes"


func calculateDeliveryTime(minutes: Double, quantity:Int) ->Double{
    return minutes * Double(quantity)
}
let time = calculateDeliveryTime(minutes: 15, quantity: 3)
print(time)

// answer to 1
func deliveryTime(minutes: Int) -> String{
    return "Ready in \(minutes) mins"
}
let messagez = deliveryTime(minutes: 10)
print(messagez)

// mini ex 2 Creat a function to calculate price + tax and show results

func calculatePriceWithTax(price: Double, tax: Double) -> Double{
    return price + (price * tax)
}
print(calculatePriceWithTax(price: 10, tax: 0.20))

// answer 3
func applyDiscount(price:Double, discount:Double) -> Double{
    let finalPrice = price - (price * discount)
    return finalPrice
}
let discountedPrice = applyDiscount(price: 100, discount: 0.20)
print(discountedPrice)
