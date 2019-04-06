//
//  ViewController.swift
//  quiz
//
//  Created by Usha Juttu on 5/4/19.
//  Copyright © 2019 Usha Juttu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var QuestionLabel: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = ["Which nuts are used in marzipan?", "From which country does pitta bread originate?","What is called a meal in open air?","What type of plant do prickly pears grow on?","which is most effective way to recollect memory?"]
    let answers: [String] = ["Almonds","Greece","picnic","something","listening to music"]
    var currentQuestionIndex: Int = 0
    
    
    @IBAction func showNextQuestion(_ sender: Any) {
        currentQuestionIndex = currentQuestionIndex + 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        QuestionLabel.text = question
        answerLabel.text = "---"
    
    }
    
    @IBAction func showAnswer(_ sender: Any) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

