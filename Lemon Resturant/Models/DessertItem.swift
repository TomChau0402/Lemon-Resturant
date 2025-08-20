//
//  DessertItem.swift
//  Lemon Resturant

import Foundation

struct DessertItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
   
}
