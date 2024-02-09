//
//  QuestionView.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//
import SwiftUI

struct QuestionView: View {
    let question: Question
    @Binding var selectedAnswerIndex: Int?
    @State private var isAnswerCorrect = false
    @State private var correctAnswer = ""

    var body: some View {
        VStack {
            Text(question.text)
                .font(.title)
                .foregroundColor(.purple2)
                .padding()
                .bold()
            
            ForEach(0..<question.answers.count) { index in
                Button(action: {
                    selectedAnswerIndex = index
                }) {
                    Text(question.answers[index])
                        .padding()
                        .background(selectedAnswerIndex == index ? Color.purple2 : Color.white)
                        .foregroundColor(selectedAnswerIndex == index ? Color.white : Color.black)
                        .cornerRadius(10)
                }
                .padding(.bottom, 10)
            }
            
            Button("Submit") {
                checkAnswer()
            }
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.purple2)
            
            if isAnswerCorrect {
                            Text("Točno!")
                                .foregroundColor(.green)
                                .padding(.top)
                        } else if !correctAnswer.isEmpty {
                            Text("Netočno! Točan odgovor je \(correctAnswer)")
                                .foregroundColor(.red)
                                .padding(.top)
                        }
        }
    }
    func checkAnswer() {
        guard let selectedAnswerIndex = selectedAnswerIndex else {
            // Korisnik nije odabrao odgovor
            return
        }
        
        if selectedAnswerIndex == question.correctAnswerIndex {
            // Točan odgovor
            isAnswerCorrect = true
            print("Točno!")
        } else {
            // Netočan odgovor
            isAnswerCorrect = false
            correctAnswer = question.answers[question.correctAnswerIndex]
            print("Netočno! Točan odgovor je \(correctAnswer)")
        }
    }
}
