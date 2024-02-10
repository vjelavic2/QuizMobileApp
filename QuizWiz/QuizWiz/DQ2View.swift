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

struct DQ2: View {
    @State private var selectedAnswerIndex: Int?
    @State private var isAnswerCorrect = false // Dodajemo novi state
    
    let question = Question(text: "Koje je godine počeo 1. svjetski rat?", answers: ["a. 1917.", "b. 1915.", "c. 1914.", "d. 1916."], correctAnswerIndex: 2)
    
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
                NavigationLink(destination: DQ3View().navigationBarBackButtonHidden(true)){
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
    DQ2()
}
