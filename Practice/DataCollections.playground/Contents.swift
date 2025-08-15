import UIKit

/*
 Dictionaries
 Store key-value pairs. you use the key to access the value
 Syntax
 var dictName = [key1:value1, key2:value2, key3;value3]
 */

// Example 1
var menuPrices:[String:Double] = ["pizza": 12.99, "salad": 6.99]
print(menuPrices)

print(menuPrices["pizza"]!)

//Example 2
var stock:[String:Int] = ["Burger":5, "Soup": 3, "Salad": 2]

stock["Soup"] = 4 // Update the value for Soup
print(stock)

//Example 3
var ingrediants = ["tomatoe":3, "Cheese":2]

ingrediants["Onion"] = 1 // adding onions in ingredients
print(ingrediants)

//For
for ingredient in ingrediants {
    print(ingredient)
}
for (key, value) in ingrediants {
    print(key, value)
}

for (ingredient, price) in ingrediants {
    print(ingredient, price)
}
