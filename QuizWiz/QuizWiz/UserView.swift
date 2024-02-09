//
//  UserView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

//
//  HomeView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import SwiftUI
import FirebaseAuth

struct UserView: View {
    
    var body: some View {
        VStack {
                    if let currentUser = Auth.auth().currentUser {
                        if let email = currentUser.email {
                            Text("Prijavljeni korisnik s e-mailom: \(email)")
                                .padding()
                        } else {
                            Text("Korisnik nije prijavljen e-mailom.")
                                .padding()
                        }
                    } else {
                        Text("Nema prijavljenog korisnika.")
                            .padding()
                    }
                }
                .onAppear {
                    printUserInfo()
                }
        
    }
    func printUserInfo() {
        if let currentUser = Auth.auth().currentUser {
            if let email = currentUser.email {
                print("Prijavljeni korisnik: \(email)")
            } else {
                print("Korisnik nije postavio ime.")
            }
        } else {
            print("Nema prijavljenog korisnika.")
        }

        
    }
}

#Preview {
    UserView()
}
