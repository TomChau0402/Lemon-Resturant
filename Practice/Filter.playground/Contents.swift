import UIKit

/*
 Filter
 Create a new array containing only elements that satisfy a given condition
 
 Syntax
 collection.fliter{$0 condition}
 
 */

let values = [12.0, 8.5, 4.5, 14.99]

for value in values {
    if value > 10 {
        print(value)
    }
}

let premium = values.filter { $0 > 10 }
print (premium)

// Example 2

let dishes = ["Pizza", "Pasta", "Burger", "Salad", "Ice cream", "Pancakes"]
let filtered = dishes.filter { $0.hasPrefix("P")}
print(filtered)

/*
 Mini- challenge
 Filter am array of dishes name to find vegerarian options
 (hint: include keywokd like 'salad".contains)
 */

let vegetarianMenu: [String] = ["Veggie Salad", "Stir-fry", "Steak", "Chicken", "Lentil Shepherd's Pie"]

let filteredMenu = vegetarianMenu.filter { $0.contains("Salad") }
print(filteredMenu)
