//
//  MainView.swift
//  Lemon Resturant
//
//  
//

import SwiftUI

struct MainView: View {
    
    @State private var isLoggedIn = true
    @State private var userName = ""
    
    var body: some View {
        NavigationView{
            if isLoggedIn == true {
                VStack{
                    Text("Welcome")
                        .font(.title)
                        .padding()
                    NavigationLink("Make a Reservation", destination: ReservationForm())
                        .padding()
                    
                    NavigationLink("About Us", destination: AboutView())
                        .padding()
                    
                }
            }else{
    
            }
        }
    }
}


#Preview {
    MainView()
}
