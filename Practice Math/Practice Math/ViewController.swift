//
//  ViewController.swift
//  Practice Math
//
//  Created by Lynn Rosier on 7/11/18.
//  Copyright © 2018 AKaplan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var num1: UILabel!
    
    @IBOutlet weak var num2: UILabel!
    
    @IBOutlet weak var op: UILabel!
    
    @IBOutlet weak var ans: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var score: UILabel!
    
    
    var a = 0
    var b = 0
    var problemsAttempted = 0
    var problemsRight = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ans.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        ans.resignFirstResponder()
        return true
    }
    

    @IBAction func plus(_ sender: Any) {
        a = (Int(arc4random_uniform(100)))
        b = (Int(arc4random_uniform(100)))
        
        num1.text = String(a)
        num2.text = String(b)
        op.text = "+"
        
        
    }

    @IBAction func minus(_ sender: Any) {
        a = (Int(arc4random_uniform(100)))
        b = (Int(arc4random_uniform(100)))
        
        num1.text = String(a)
        num2.text = String(b)
        op.text = "-"

    }

    @IBAction func multi(_ sender: Any) {
        a = (Int(arc4random_uniform(100)))
        b = (Int(arc4random_uniform(100)))
        
        num1.text = String(a)
        num2.text = String(b)
        op.text = "*"

    }
    @IBAction func divide(_ sender: Any) {
        a = (Int(arc4random_uniform(100)))
        b = (Int(arc4random_uniform(100)))
        
        num1.text = String(a)
        num2.text = String(b)
        op.text = "/"

    }

    @IBAction func mod(_ sender: Any) {
        a = (Int(arc4random_uniform(100)))
        b = (Int(arc4random_uniform(100)))
        
        num1.text = String(a)
        num2.text = String(b)
        op.text = "%"

    }
    
    @IBAction func check(_ sender: Any) { 
        let aninput = Int(ans.text!)
        
        if let aninput = aninput
        {
            if op.text == "+"
            {
                let area = a + b
                if String(area) == ans.text
                {
                    label.text = "Correct"
                    problemsRight = problemsRight + 1
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
                else
                {
                    label.text = "Try Again"
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
            }
            else if op.text == "-"
            {
                let area = a - b
                if String(area) == ans.text
                {
                    label.text = "Correct"
                    problemsRight = problemsRight + 1
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
                else
                {
                    label.text = "Try Again"
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
            }
            else if op.text == "*"
            {
                let area = a * b
                if String(area) == ans.text
                {
                    label.text = "Correct"
                    problemsRight = problemsRight + 1
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
                else
                {
                    label.text = "Try Again"
                    problemsRight = problemsRight + 0
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
            }
            
            else if op.text == "/"
            {
                let area = a / b
                if String(area) == ans.text
                {
                    label.text = "Correct"
                    problemsRight = problemsRight + 1
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
                else
                {
                    label.text = "Try Again"
                    problemsRight = problemsRight + 0
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
            }
            else if op.text == "%"
            {
                let area = a % b
                if String(area) == ans.text
                {
                    label.text = "Correct"
                    problemsRight = problemsRight + 1
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
                else
                {
                    label.text = "Try Again"
                    problemsRight = problemsRight + 0
                    problemsAttempted = problemsAttempted + 1
                    var yeet = Double(Double(problemsRight) / Double(problemsAttempted))
                    yeet = yeet * 100
                    score.text = String(yeet)
                }
            }


        }
        
        // put another button here

    }
    @IBAction func startover(_ sender: Any) {
        
        num1.text = "Number 1"
        
        num2.text = "Number 2"
        
        op.text = "Op"
        
        problemsAttempted = 0
        
        problemsRight = 0
        
        score.text = "???/100"
        
    }
    
}


