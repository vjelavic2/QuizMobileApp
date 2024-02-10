//
//  DQ4View.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

//
//  DQ2View.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

//
//  DailyQuizView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import SwiftUI

struct DQ5View: View {
    @State private var selectedAnswerIndex: Int?
    @State private var isAnswerCorrect = false // Dodajemo novi state
    
    let question = Question(text: "Koji je ovo jezik?: Ahoj", answers: ["a. Slovenski", "b. Slovački", "c. Bugarski", "d. Mađarski"], correctAnswerIndex: 1)
    
    var body: some View {
        VStack{
            HStack{
                
                Spacer()
                
                Image("halfCircle1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                
            }.padding(-37)
            Spacer().frame(height: 50)
            
            QuestionView(question: question, selectedAnswerIndex: $selectedAnswerIndex)
            if isAnswerCorrect {
                Text("Točno!")
                    .foregroundColor(.green)
                    .padding()
                
            }
            
            
            HStack{
                Spacer()
                NavigationLink(destination: CongratsView().navigationBarBackButtonHidden(true)){
                    Image(systemName: "chevron.right")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
                .navigationBarHidden(true)
            }.navigationBarHidden(true)
        }.navigationBarHidden(true)
    }
}
   
#Preview {
    DQ5View()
}
