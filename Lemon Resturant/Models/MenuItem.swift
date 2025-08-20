//
//  MenuItem.swift
//  Lemon Resturant
//
//

import Foundation

struct MenuItem: Identifiable {
    var id:UUID = UUID()
    var name: String
    var description: String
    var price: Double
   
}
