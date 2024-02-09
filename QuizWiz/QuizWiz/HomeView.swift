//
//  HomeView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import SwiftUI
import FirebaseAuth

struct HomeView: View {
    
    var body: some View {
        VStack{
            
            HStack{
                VStack(alignment: .leading){
                    Text("Hello!")
                        .cornerRadius(10)
                        .font(.system(size: 40, weight: .bold))
                    Text("Great to see you again.")
                        .cornerRadius(10)
                        .foregroundColor(.mygrey)
                }
                
                Spacer()
                
                Image("mywizz")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
            }.padding(35)
            
            Spacer().frame(height: -10)

            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
                    .opacity(0.3)
                    .frame(height: 80)
                
                HStack {
                    Image(systemName: "questionmark.square.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.purple2)
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Daily Quiz")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.purple2)
                        
                        Text("5 Mixed Questions")
                            .foregroundColor(.black)
                    }
                    Spacer().frame(width: 100)
                }
                .padding()
            }
            .padding()
            
            Spacer().frame(height: 50)

            
            HStack{
                Text("Practice more")
                    .padding(.leading, 20)
                    .cornerRadius(10)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.purple2)
                Spacer()
            }
            Spacer().frame(height: -10)

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
                    .opacity(0.3)
                    .frame(height: 80)
                
                HStack {
                    Image(systemName: "1.square")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.purple2)
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("Math")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("5 Questions")
                            .foregroundColor(.black)
                    }
                    Spacer().frame(width: 150)
                }
                .padding()
            }
            .padding()
            
            Spacer().frame(height: -1)

            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(.purple)
                    .opacity(0.3)
                    .frame(height: 80)
                
                HStack {
                    Image(systemName: "2.square")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                        .foregroundColor(.purple2)
                    Spacer()
                    
                    VStack(alignment: .leading) {
                        Text("History ")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("5 Questions")
                            .foregroundColor(.black)
                    }
                    Spacer().frame(width: 140)
                }
                .padding()
            }
            .padding()
            Spacer().frame(height: 80)
            
            
        }
    }
}

#Preview {
    HomeView()
}
