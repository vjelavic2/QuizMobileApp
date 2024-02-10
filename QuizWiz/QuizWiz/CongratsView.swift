//
//  CongratsView.swift
//  QuizWiz
//
//  Created by student on 10.02.2024..
//

import SwiftUI

struct CongratsView: View {
    var body: some View {
        VStack{
            
                Text("Congratulations!")
                    .padding()
                    .foregroundColor(Color.purple2)
                    .cornerRadius(10)
                    .font(.system(size: 40, weight: .bold))
                
                Spacer().frame(height: 20)
                
                Image("wizardFinal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 65))
                
                Spacer().frame(height: 10)
                
                Text("You're a true QuizWiz")
                    .padding()
                    .foregroundColor(Color.purple2)
                    .cornerRadius(10)
                    .font(.system(size: 25, weight: .bold))
            
            Spacer().frame(height: 80)
            
            HStack{
                NavigationLink(destination: MainView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "chevron.left")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
                Spacer()

            }.navigationBarHidden(true)
            
            }
            
        
    }
}

#Preview {
    CongratsView()
}
