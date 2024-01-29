//
//  SignUpView.swift
//  QuizWiz
//
//  Created by student on 29.01.2024..
//

import SwiftUI



struct SignInView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView{
            
            VStack{
                HStack{
                    
                    Spacer()
                    
                    Image("halfCircle1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                    
                }.padding(-37)
                
                
                
                Spacer().frame(height: 100)
                
                HStack{
                    Text("Sign In")
                        .foregroundColor(Color.purple2)
                        .font(.system(size: 40, weight: .bold))
                    Spacer()
                }.padding(22)
                
                Spacer().frame(height: 50)
                
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer().frame(height: 100)
                
                
                Button(action: {
                    print("Username: \(username)")
                    print("Address: \(email)")
                    print("Password: \(password)")
                }) {
                    Text("SIGN IN")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple2)
                        .cornerRadius(10)
                        .font(.system(size: 17, weight: .bold))
                }
                Spacer().frame(height: 20)
                
                HStack{
                    Text("Don't have an account? ")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 17))
                    
                    NavigationLink(destination: SignUpView()){
                        Text("Sign Up.")
                            .foregroundColor(Color.purple2)
                            .font(.system(size: 17, weight: .bold))
                        
                    }
                }
                
                Spacer()
                
                
                
            }
            
            
        }
    }
}
#Preview {
    SignInView()
}
