//
//  DessertView.swift
//  Lemon Resturant
//


import SwiftUI

struct DessertView: View {
    let dessertMenuItems = [
        DessertItem(
            name: "Tiramisu",
            description: "Layers of ladyfingers soaked in coffee and mascarpone cheese.",
            price:5.99),
        DessertItem(
                name: "Cheesecake",
                description: "Cheese and cake.",
                price:15.99),
        DessertItem(
            name: "Gelato",
            description: "Lice cream",
            price:10.99)
        
    ]
    var body: some View {
        NavigationView {
            List(dessertMenuItems) { dessert in
                HStack {
                    Text(dessert.name)
                        .font(.title3)
                    Spacer()
                    Text(String(format: "%.2f", dessert.price))
                        .font(.caption).foregroundColor(.gray)
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle(Text("Desserts"))
    }
}
#Preview {
    DessertView()
}

