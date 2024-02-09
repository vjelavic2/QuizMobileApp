//
//  MainView.swift
//  QuizWiz
//
//  Created by student on 29.01.2024..
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Spacer()
                    NavigationLink(destination: ContentView()){
                        Image(systemName: "arrowshape.turn.up.left.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.mygrey)
                    }
                }.padding(25)
                
                
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    
                    UserView()
                        .tabItem {
                            Label("User info", systemImage: "person.fill")
                        }
                    
                }.accentColor(.purple)
            }
        }
    }
}

#Preview {
    MainView()
}
