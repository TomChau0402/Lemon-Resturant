//
//  ContentView.swift
//  Lemon Resturant
//
//  Created by Amy Vu on 8/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Hello, Cohort 2!")
                    .padding()
                NavigationLink(destination: AboutView()) {
                    Text("Go to About")
                        .foregroundColor(.blue)
                    
                }
            }
            .navigationTitle(Text("Home"))
        }
    }
}
    #Preview {
    ContentView()
}
