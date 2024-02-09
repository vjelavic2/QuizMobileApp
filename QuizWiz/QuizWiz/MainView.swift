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
               
                
                
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    
                    UserView()
                        .tabItem {
                            Label("User", systemImage: "person.fill")
                        }
                    
                }.accentColor(.purple)
            }
        }
    }
}

#Preview {
    MainView()
}
