//
//  ViewController.swift
//  practiceQuiz
//
//  Created by MJC-iCloud on 1/21/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = myQuestions[iCurrentQuestion]
    }

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        iCurrentQuestion += 1
        if (iCurrentQuestion == myQuestions.count) {
            iCurrentQuestion = 0;
        }
        let myQuestion: String = myQuestions[iCurrentQuestion];
        questionLabel.text = myQuestion
        // Clear the answer text:
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let myAnswer: String = myAnswers[iCurrentQuestion]
        answerLabel.text = myAnswer
    }
    
    
    // "let" for constants:
    let myQuestions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let myAnswers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    // "var" for variables:
    var iCurrentQuestion: Int = 0
}

