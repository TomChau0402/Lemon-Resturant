//
//  AboutView.swift
//  Lemon Resturant
//
//  Created by Amy Vu on 8/12/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack{
            Text("Welcome to Little Lemon")
                .font(.title)
                .padding()
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
        }
        .navigationTitle("About us")
    }
}

#Preview {
    AboutView()
}
