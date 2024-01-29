//
//  ContentView.swift
//  QuizWiz
//
//  Created by student on 23.01.2024..
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Spacer().frame(height: 50)
                
                Text("QuizWiz")
                    .padding()
                    .foregroundColor(Color.purple)
                    .cornerRadius(10)
                    .font(.system(size: 65, weight: .bold))
                Spacer().frame(height: 30)
                
                
                Image("wizardFinal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 65))
                
                
                VStack {
                    Spacer().frame(height: 90)
                    
                    
                    
                    NavigationLink(destination: SignUpView()
                        .navigationBarBackButtonHidden(true)){
                        Text("GETS STARTED")
                            .padding()
                            .background(Color.purple)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .cornerRadius(80)
                    }
                    
                    
                    
                    
                    NavigationLink(destination: SignInView()    
                        .navigationBarBackButtonHidden(true)){
                        Text ("I already have an account")
                            .padding()
                            .foregroundColor(Color.purple)
                            .font(.system(size: 15, weight: .bold))
                            .background(
                                RoundedRectangle(cornerRadius: 80)
                                    .stroke(Color.purple, lineWidth: 2)
                                    .background(Color.white)
                            )
                        
                        
                    }
                    
                }
                
            }
            .navigationBarBackButtonHidden(true)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
