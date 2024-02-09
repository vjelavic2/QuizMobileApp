//
//  ResultView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import SwiftUI

struct ResultView: View {
    let correctAnswers: Int
    
    var body: some View {
        VStack {
            Text("Quiz completed!")
                .font(.title)
                .padding()
            
            Text("Your score: \(correctAnswers)")
                .padding()
        }
    }
}

#Preview {
    ResultView(correctAnswers: 2)
}
