//
//  SignUpView.swift
//  QuizWiz
//
//  Created by student on 29.01.2024..
//

import SwiftUI
import Firebase


struct SignUpView: View {
    @State private var username = ""
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
                
                
                
                Spacer().frame(height: 60)
                
                HStack{
                    Text("Sign Up")
                        .foregroundColor(Color.purple2)
                        .font(.system(size: 40, weight: .bold))
                    Spacer()
                }.padding(22)
                
                Spacer().frame(height: 30)
                
                TextField("Username", text: $username)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("Email address", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                SecureField("Password", text: $password)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Spacer().frame(height: 100)
                
                
                Button(action: {
                    signUp()
                }) {
                    Text("CREATE AN ACCOUNT")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.purple2)
                        .cornerRadius(10)
                        .font(.system(size: 17, weight: .bold))
                }
                .background(NavigationLink("", destination: MainView(), isActive: $isUserAuthenticated)
                    .navigationBarBackButtonHidden(true)
).navigationBarHidden(true)
                Spacer().frame(height: 20)
                
                HStack{
                    Text("Already have an account? ")
                        .foregroundColor(Color.gray)
                        .font(.system(size: 17))
                    
                    NavigationLink(destination: SignInView().navigationBarBackButtonHidden(true)){
                        Text("Sign In.")
                            .foregroundColor(Color.purple2)
                            .font(.system(size: 17, weight: .bold))
                        
                    }.navigationBarHidden(true)
                }.navigationBarHidden(true)
                
                Spacer()
                
                
                
            }.navigationBarHidden(true)

        }.navigationBarHidden(true)
    }
    private func signUp() {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error {
                    print("Error creating user.")
                } else {
                    // Uspješno stvoren korisnički račun
                    print("User created successfully")
                    isUserAuthenticated=true
                }
            }
        }

}
#Preview {
    SignUpView()
}
