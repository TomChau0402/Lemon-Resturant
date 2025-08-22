//
//  Customer.swift
//  Lemon Resturant
//


import Foundation

struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]
    
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "Loyalty Member" : "Not a Loyalty Member"
        let dishes = favoriteDishes.joined(separator: ", ")
        
        
        
        return "\(name) \(loyalty). Favorite dishes: \(dishes)"
    }
}
