//
//  MenuView.swift
//  Lemon Resturant
//
//  Created by Amy Vu on 8/14/25.
//

import SwiftUI

struct MenuView: View {
    let menuItems = [
        "Pizza":9.99,
        "Pasta":12.99,
        "Salad":7.99,
        "Chicken Wings":14.99,
        "Steak":24.99
    ]
    @State private var showMessage = false
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName:"fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size:56))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            //VStack
            VStack(spacing:24) {
                Toggle("Show a special text", isOn: $showMessage)
                    .padding()
                
                if showMessage{
                    Text("You unlocked a surprise !")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                
            }
        }
        List {
            ForEach(menuItems.sorted(by: {$0.key > $1.key}), id:\.key){(name, price) in
                HStack {
                    VStack(alignment: .leading) {
                        Text(name)
                            .font(.headline)
                        Text("$\(price, specifier: "%.2f")")
                            .foregroundColor(.secondary)
                    }
                    
                }
            }
            
        }
    }

    }


#Preview {
    MenuView()
}
