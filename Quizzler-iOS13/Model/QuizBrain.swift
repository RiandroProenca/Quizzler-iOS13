//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Riandro Proença on 16/08/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//
struct QuizBrain {
    let quiz = [
        Question(q: "A agua da privada gira em sentidos diferentes quando estamos no hemisfério norte ou no hemisfério sul ", a: "Falso"),
        Question(q: "Se houvesse uma guerra no espaço, o barulhos de tiros e explosões não seriam ouvidos?", a: "Verdadeiro"),
        Question(q: "A verdadeira cor do sol e branco?", a: "Verdadeiro"),
        Question(q: "Ė possivel que gêmoes possam nascer com cor de peles diferentes?", a: "Verdadeiro"),
        Question(q: "Nos anos 1830, o ketchup era vendiddo como remedio ?", a: "Verdadeiro"),
        Question(q: "Os pássaros são parentes dos dinossauros?", a: "Falso"),
        Question(q: "O coice mais poderoso que existe é o da Girafa ?", a: "Verdadeiro"),
        Question(q: "Os biscoitos da sorte foram inventados nos Estados Unidos em 1918 ?", a: "Verdadeiro"),
    ]
    
    var questionNumber  = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            score += 1
            return true
        }else{
            return false
        }
    }
    func getScore() -> Int {
        return score
        }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() ->Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
  
    }
    


