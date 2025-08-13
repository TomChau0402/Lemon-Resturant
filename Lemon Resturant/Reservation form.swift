//
//  Reservation form.swift
//  Lemon Resturant
//
//  Created by Amy Vu on 8/12/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 0
    @State private var reservationDate = Date()
    @State private var allergyNote: String = ""
    @State private var showSummary:Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Reservation Details")){
                    TextField("Insert your Name", text:$userName)
                    
                    if userName.isEmpty {
                        Text("please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }
                    Stepper("Guests: \(guestCount)", value:$guestCount, in: 1...10)
                    
                    
                    if guestCount > 5 {
                        Text("For large parties ,we will contact you")
                            .foregroundColor(.blue)
                            .font(.caption)
                    }
                    DatePicker("Date", selection: $reservationDate,
                               displayedComponents: [.date, .hourAndMinute])
                    TextField("Any allergies?", text: $allergyNote)
                    Button("confirm Reservation"){
                        if !userName.isEmpty {
                            showSummary = true
                        }
                }
                    .disabled(userName.isEmpty)
                    .navigationDestination(, dest
            }
        }
        .navigationTitle("Book a table")
    }
}

#Preview {#imageLiteral(resourceName: "Screenshot 2025-08-12 at 6.43.29 PM.png")
    ReservationForm()
}
