//
//  ViewController.swift
//  Calculator
//
//  Created by user on 7/10/20.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFieldNumber1: UITextField!
    
    @IBOutlet var textFieldNumber2: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var extraCreditLabel: UILabel!
    

    @IBAction func onButtonTap(_ sender: UIButton) {
        
        let gradeOne = Int(textFieldNumber1.text!)
        let gradeTwo = Int(textFieldNumber2.text!)
        
        let total = gradeOne! + gradeTwo!
        let average = total / 2
        
        var finalGrade : Character
        
        if (average >= 90) {
            finalGrade = "A"
            self.view.backgroundColor = UIColor.green
           extraCreditLabel.text = "You don't need any extra credit. "
        }
        else if (average >= 80) {
            finalGrade = "B"
            self.view.backgroundColor = UIColor.blue
            extraCreditLabel.text = "If you want to get to an A, email me for some extra credit."
        }
        else if (average >= 70){
            finalGrade = "C"
            self.view.backgroundColor = UIColor.orange
            extraCreditLabel.text = "You will be needing extra credit for a high grade."
        }
        else if (average >= 60){
            finalGrade = "D"
            self.view.backgroundColor = UIColor.purple
            extraCreditLabel.text = "You need extra credit."
        }
        else {
            finalGrade = "F"
            extraCreditLabel.text = "You need extra credit"
        }
        
        
        
       resultLabel.text = "Your letter grade is \(finalGrade)"
    }
    
override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    
    
}

}
