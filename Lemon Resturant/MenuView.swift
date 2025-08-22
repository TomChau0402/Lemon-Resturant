//
//  MenuView.swift
//  Lemon Resturant
//
// 
//

import SwiftUI

struct MenuView: View {
    /* let menuItems = [
     "Pizza":9.99,
     "Pasta":12.99,
     "Salad":7.99,
     "Chicken Wings":14.99,
     "Steak":24.99,
     "Chocolate Cake": 5.75
     ]
     */
    /*
     
     Computed Properties
    Computed property is a property that doesnt store a value directly.
     Instead it calculates its value every time it's accessd, using customer logic you define.
     
     Syntax
     
     var propertyName: Type {
     return a calculated value
     }
     */
    
    
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted {$0.price < $1.price}
    }
    // Assignment 3
    
    var premiumCount:Int {
        let premiumFilter = menuItems.filter {item in
            item.price >= 10}
        return premiumFilter.count
    }
    
    var regularCount:Int {
        let regularFilter = menuItems.filter {item in
            item.price < 10}
        return regularFilter.count
    }
    
    var totalPrice:Double {
        let totalPrice = menuItems.reduce(0.0) {accumulator, item in
            accumulator + item.price
        }
        return totalPrice
    }
    // Assignment 3

    var averagePrice: Double {
        let prices = menuItems.map { item in
            item.price}
        let total = prices.reduce(0.0) { accumulator, price in accumulator + price}
        let average = total / Double(prices.count)
        return average}
    
    @State private var showMessage:Bool = false
    @State private var showThankYouMessage:Bool = false
    @State private var showDessert:Bool = false
    
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "cheesy and hot",
            price: 9.99
        ),
        MenuItem(
            name: "Steak",
            description: "delicious and juicy",
            price: 4.99
        ),
        MenuItem(
            name: "Pasta",
            description: "tasty and soft",
            price: 12.99
        ),
        MenuItem(
            name: "Salad",
            description: "refreshing and healthy",
            price: 5.99
        ),
        MenuItem(
            name: "Ramen",
            description: "hot and spicy",
            price: 14.99
        ),
        MenuItem(
            name: "Tacos",
            description: "tasty and crunchy",
            price: 13.99
        ),
        MenuItem(
            name: "Lasagna",
            description: "Fatty and non-healthy",
            price: 15.99)
]
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName:"fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size:56))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            Text("Average price: $\(averagePrice, specifier: "%.2f")")
                .foregroundColor(.gray)
                .font(.title3)
            
                 
            //VStack
            VStack(spacing:24) {
                Toggle("Show a special text", isOn: $showMessage)
                    .padding()
                
                if showMessage{
                    Text("You unlocked a surprise !")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                Toggle("Show thank you message", isOn: $showThankYouMessage)
                    .padding()
                
                if showThankYouMessage{
                    Text("Thanks for visiting Little Lemon")
                        .italic()
                    .foregroundColor(.blue)}
            }
            Button("View Desserts") {
            }
            .padding()
            .background(.green.opacity(0.4))
            .cornerRadius(12)
            .foregroundColor(.black)
            
            .sheet(isPresented: $showDessert){
                DessertView()
            }
        }
        
     //   List(menuItems) { item in
        List(sortedMenuItems){ item in
            MenuItemView(item: item)
        }
        
    // Assignment 3
        Text("Premium: \(premiumCount) | Regular: \(regularCount) | total: $\(totalPrice, specifier:"%.2f)")")
            .padding()
            .background(.yellow.opacity(0.2))
            .cornerRadius(12)
       /*List {
            ForEach(menuItems.sorted(by: {$0.key > $1.key}), id:\.key){(name, price) in
                HStack {
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                        Text("$\(price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                        
                        if price < 7 {
                            Text("\(price, specifier: "%.2f")")
                                .foregroundColor(.green)
                        }
                    }
                    
                }
            }*/
            
        }
    }

    


#Preview {
    MenuView()
}
