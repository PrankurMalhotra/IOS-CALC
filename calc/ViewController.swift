//
//  ViewController.swift
//  calc
//
//  Created by Malhotra,Prankur on 2/6/16.
//  Copyright © 2016 Malhotra,Prankur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber = 0
    var secondNumber = 0
    var answer = 0
    var operation:String = ""
    
    
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    @IBAction func numberTapped(sender: AnyObject) {
        let number = sender.currentTitle!
        if isTypingNumber {
            
            if let input = calculatorDisplay.text {
                    calculatorDisplay.text = (input + number!)
            }

        }
        else {
            isTypingNumber = true
            calculatorDisplay.text = number
            
        }
        
        
    }
    
    @IBAction func calculationTappedNegetive(sender: AnyObject) {
        firstNumber = Int(calculatorDisplay.text!)!
        calculatorDisplay.text = nil
        operation =  sender.currentTitle!!
        isTypingNumber=false
        
        
        
        
    }
    @IBAction func calculationTappedPositive(sender: AnyObject) {
        firstNumber = Int(calculatorDisplay.text!)!
        calculatorDisplay.text = nil
        operation =  sender.currentTitle!!
    }
    @IBAction func equalsTapped(sender: AnyObject) {
        secondNumber = Int(calculatorDisplay.text!)!
        
        switch operation {
            
        case "+":
            answer = firstNumber + secondNumber
            calculatorDisplay.text = answer.description
            break
        case "-":
            answer = firstNumber - secondNumber
            calculatorDisplay.text = answer.description
            break
            
        default:
            print("invalid operation")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

