//
//  QuizWizApp.swift
//  QuizWiz
//
//  Created by student on 23.01.2024..
//

import SwiftUI
import Firebase

@main
struct QuizWizApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
