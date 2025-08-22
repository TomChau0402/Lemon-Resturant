//
//  CustomerSummaryView.swift
//  Lemon Resturant
//
//
//

import SwiftUI

struct CustomerSummaryView: View {
    
    
    // use @State to simulate a sample customer adn show thier info using Text element
   
    @State private var customer = Customer(
        name: "Alice",
        email: "alice@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Spaghetti Bolognese", "Chicken Tikka Masala"]
        
    )
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("Customer Summary")
                .font(.title)
                .bold()
            
            Text("Name: \(customer.name)")
            
            Text ("Email: \(customer.email)")
            
            if customer.isLoyaltyMember == true {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.yellow)
                    Text("Loyalty Member")}
                .foregroundStyle(.green)
                
                
                Text("Favorite Dishes:")
                List(customer.favoriteDishes, id: \.self){ dish in
                    Text(dish)
                        .padding()
                }
            
                
                //Toggle
                VStack(spacing:24) {
                    Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)}
                        .padding()
                }
            }
        .padding(35)
        }
        
    }
#Preview {
    CustomerSummaryView()
}
