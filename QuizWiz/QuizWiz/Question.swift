//
//  Question.swift
//  QuizWiz
//
//  Created by student on 09.02.2024..
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let correctAnswerIndex: Int
    var isAnswerCorrect: Bool? = nil

}
