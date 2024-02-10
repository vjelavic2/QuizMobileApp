//
//  DailyQuizView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import SwiftUI

struct DailyQuizView: View {
    @State private var selectedAnswerIndex: Int?
    @State private var isAnswerCorrect = false // Dodajemo novi state
    
    let question = Question(text: "Koji je glavni grad Italije?", answers: ["a. Rim", "b. Venecija", "c. Zeneva", "d. Osijek"], correctAnswerIndex: 0)
    
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
                NavigationLink(destination: DQ2().navigationBarBackButtonHidden(true)){
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
    DailyQuizView()
}
