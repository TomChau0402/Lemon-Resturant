
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @Binding var username: String
    
    var body: some View {
        NavigationStack{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height:50)
                
                TextField("Enter Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login") {
                    if username == "Tom"{
                        isLoggedIn = true
                    }
                }
            }
        }
    }
                

//#Preview {
  //  LoginView()
}
