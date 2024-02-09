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
    
    let question = Question(text: "Koje godine je započeo 1. svjetski rat?", answers: ["1915.", "1916.", "1914.", "1913."], correctAnswerIndex: 2)
    
    var body: some View {
        QuestionView(question: question, selectedAnswerIndex: $selectedAnswerIndex)
        if isAnswerCorrect {
            Text("Točno!")
                .foregroundColor(.green)
                .padding()
        }
    }
    
    
    
    
    
}
   
#Preview {
    DQ2()
}
