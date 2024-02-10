//
//  SignUpView.swift
//  QuizWiz
//
//  Created by student on 29.01.2024..
//

import SwiftUI
import Firebase


struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isUserAuthenticated = false
    
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
                
                TextField("Email address", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer().frame(height: 100)
                
                
                Button(action: {
                        signIn()
                }) {
                    Text("SIGN IN")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple2)
                        .cornerRadius(10)
                        .font(.system(size: 17, weight: .bold))
                }
                .background(NavigationLink("", destination: MainView(), isActive: $isUserAuthenticated)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
)

                Spacer().frame(height: 20)
                
                HStack{
                    Text("Don't have an account? ")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 17))
                    
                    NavigationLink(destination: SignUpView().navigationBarBackButtonHidden(true)){
                        Text("Sign Up.")
                            .foregroundColor(Color.purple2)
                            .font(.system(size: 17, weight: .bold))
                        
                    }.navigationBarHidden(true)
                }
                
                Spacer()
                
                
            }
            

        }.navigationBarHidden(true)
    }
    
     func signIn() {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Wrong paassword or email.")
            } else {
                // Uspješna prijava
                print("User signed in successfully")
                isUserAuthenticated=true
                
            }
           
        }
    }
}
#Preview {
    SignInView()
}
