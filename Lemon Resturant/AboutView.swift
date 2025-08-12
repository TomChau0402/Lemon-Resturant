//
//  AboutView.swift
//  Lemon Resturant
//
//  Created by Amy Vu on 8/12/25.
//

import SwiftUI

struct AboutView: View {
    let userName = "Tom"
    @State private var orders = 0
    @State private var useerName2 = ""
    @State private var reservationCount = 0
    var body: some View {
        VStack{
            Text("Welcome \(userName) to Little Lemon")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text ("You have ordered \(orders) times")
            Button("Order Again"){
                orders += 1
            }
            // challenge add another buttonto the reset order to 0
            
            Button("Reset"){
                orders = 0
            }
          // mini form
            TextField("Enter your name", text: $useerName2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text ("Hello \(useerName2)")
                
            Button("Add Reservation"){
                reservationCount += 1
            }
                Text ("Reservation: \(reservationCount)")
                .padding()
            Text(String(repeating: "🍋", count: reservationCount))
            }
        
        .navigationTitle("About us")
    }
}

#Preview {
    AboutView()
}
