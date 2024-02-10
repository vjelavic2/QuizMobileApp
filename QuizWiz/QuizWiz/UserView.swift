

import SwiftUI
import FirebaseAuth

struct UserView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.purple)
                        .opacity(0.3)
                        .frame(height: 400)
                        .padding(30)
                    
                    
                    
                    VStack{
                        Image("wizUser")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 160, height: 160)
                        
                        
                        
                        HStack{
                            Text("Email address:")
                                .font(.system(size: 15, weight: .bold))
                                .padding(.leading, 20)
                            
                            if let currentUser = Auth.auth().currentUser {
                                if let email = currentUser.email {
                                    Text("\(email)")
                                        .padding()
                                        .foregroundColor(.black)
                                        .font(.system(size: 15))

                                } else {
                                    Text("Korisnik nije prijavljen e-mailom.")
                                        .padding()
                                }
                            } else {
                                Text("Nema prijavljenog korisnika.")
                                    .padding()
                            }
                        }.padding()

                        HStack{
                        Text("Change your password? ")
                                .font(.system(size: 15, weight: .bold))
                            
                            NavigationLink(destination: ChangePassView().navigationBarBackButtonHidden(true)){
                                Text("No problem.")
                                    .foregroundColor(.purple2)
                            }.navigationBarHidden(true)
                                
                        }.padding()
                    }.navigationBarHidden(true)
                        
                }.navigationBarHidden(true)
               
                
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)){
                    Text("Sign out")
                        .padding()
                        .foregroundColor(Color.mygrey)
                        .cornerRadius(10)
                        .font(.system(size: 25, weight: .bold))
                }.navigationBarHidden(true)
                Spacer()
                
            }.navigationBarHidden(true)
            .onAppear {
                printUserInfo()
            }
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

