//
//  ViewController.swift
//  Calculator
//
//  Created by Mark Sampirisi on 2016-02-03.
//  Copyright © 2016 Mark Sampirisi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    //class variables
    var currentNumber = ""
    var previousNumber: Double = 0
    var lastButtonPressed = ""
    var displayString = ""
    var Operator = ""
    var total: Double = 0
    
    //number was pressed (0-9), check which number then display
    @IBAction func numberTapped(sender: AnyObject) {
        
        var userPressed = sender.currentTitle
        
        if (userPressed == "1") {
            currentNumber += "1"
            displayString += "1"
            calculatorDisplay.text = displayString
            lastButtonPressed = "1"
        }
        if (userPressed == "2") {
            currentNumber += "2"
            displayString += "2"
            calculatorDisplay.text = displayString
            lastButtonPressed = "2"
        }
        if (userPressed == "3") {
            currentNumber += "3"
            displayString += "3"
            calculatorDisplay.text = displayString
            lastButtonPressed = "3"
        }
        if (userPressed == "4") {
            currentNumber += "4"
            displayString += "4"
            calculatorDisplay.text = displayString
            lastButtonPressed = "4"
        }
        if (userPressed == "5") {
            currentNumber += "5"
            displayString += "5"
            calculatorDisplay.text = displayString
            lastButtonPressed = "5"
        }
        if (userPressed == "6") {
            currentNumber += "6"
            displayString += "6"
            calculatorDisplay.text = displayString
            lastButtonPressed = "6"
        }
        if (userPressed == "7") {
            currentNumber += "7"
            displayString += "7"
            calculatorDisplay.text = displayString
            lastButtonPressed = "7"
        }
        if (userPressed == "8") {
            currentNumber += "8"
            displayString += "8"
            calculatorDisplay.text = displayString
            lastButtonPressed = "8"
        }
        if (userPressed == "9") {
            currentNumber += "9"
            displayString += "9"
            calculatorDisplay.text = displayString
            lastButtonPressed = "9"
        }
        if (userPressed == "0") {
            currentNumber += "0"
            displayString += "0"
            calculatorDisplay.text = displayString
            lastButtonPressed = "0"
        }
    
    }
    //calculation requested, check what operator was pressed then call Calculate function
    @IBAction func calculationTapped(sender: AnyObject) {
        
        var userPressed = sender.currentTitle
        
        if (userPressed == "+") {
            //check for consequetive operator presses
            if (lastButtonPressed == "+" || lastButtonPressed == "-" || lastButtonPressed == "/" || lastButtonPressed == "*") {
                calculatorDisplay.text = calculatorDisplay.text
            }
            else {
                Calculate()
                //display the selected operator
                displayString += "+"
                calculatorDisplay.text = displayString
                Operator = "+"
                lastButtonPressed = "+"
            }

            
        }
        if (userPressed == "-") {
            if (lastButtonPressed == "+" || lastButtonPressed == "-" || lastButtonPressed == "/" || lastButtonPressed == "*") {
                calculatorDisplay.text = calculatorDisplay.text
            }
            else {
                Calculate()
                //display the selected operator
                displayString += "-"
                calculatorDisplay.text = displayString
                Operator = "-"
                lastButtonPressed = "-"
            }
            
            
        }
        if (userPressed == "*") {
            if (lastButtonPressed == "+" || lastButtonPressed == "-" || lastButtonPressed == "/" || lastButtonPressed == "*") {
                calculatorDisplay.text = calculatorDisplay.text
            }
            else {
                Calculate()
                //display the selected operator
                displayString += "*"
                calculatorDisplay.text = displayString
                Operator = "*"
                lastButtonPressed = "*"
            }
            
            
        }
        if (userPressed == "/") {
            if (lastButtonPressed == "+" || lastButtonPressed == "-" || lastButtonPressed == "/" || lastButtonPressed == "*") {
                calculatorDisplay.text = calculatorDisplay.text
            }
            else {
                Calculate()
                //display the selected operator
                displayString += "/"
                calculatorDisplay.text = displayString
                Operator = "/"
                lastButtonPressed = "/"
            }
            
            
        }
        

    }
    //equals button tapped, display current calculation
    @IBAction func equalsTapped(sender: AnyObject) {
        var userPressed = sender.currentTitle
        //check for consequetive operator presses
        if (userPressed == "=") {
            if (lastButtonPressed == "+" || lastButtonPressed == "-" || lastButtonPressed == "/" || lastButtonPressed == "*") {
                calculatorDisplay.text = calculatorDisplay.text
            }
            else {
                Calculate()
                calculatorDisplay.text = displayString
                Operator = "="
                lastButtonPressed = "="
            }
        }

    }
    //decimal button pressed, append decimal to calculation and display
    @IBAction func decimalTapped(sender: AnyObject) {
        if currentNumber == "" {
            currentNumber += "0."
            displayString += "0."
        } else {
            currentNumber += "."
            displayString += "."
        }
        calculatorDisplay.text = displayString
        lastButtonPressed = "."
    }
    
    //performs requestion operation based on the last operator pressed
    func Calculate () {
        if Operator == "" {
            previousNumber = Double (currentNumber)!
            currentNumber = ""
        }
        if (Operator == "=") {

            displayString = String (total)
            previousNumber = total
            currentNumber = ""
            
        }
        if (Operator == "+") {
            total = previousNumber + Double (currentNumber)!
            displayString = String (total)
            previousNumber = total
            currentNumber = ""
            
        }
        if (Operator == "-") {
            total = previousNumber - Double (currentNumber)!
            displayString = String (total)
            previousNumber = total
            currentNumber = ""
            
        }
        if (Operator == "*") {
            total = previousNumber * Double (currentNumber)!
            displayString = String (total)
            previousNumber = total
            currentNumber = ""
            
        }
        if (Operator == "/") {
            total = previousNumber / Double (currentNumber)!
            displayString = String (total)
            previousNumber = total
            currentNumber = ""
            
        }
    }
    //clear button pressed, clear all calculations and reset all values
    @IBAction func clearCalculations(sender: AnyObject) {
        displayString = ""
        calculatorDisplay.text = "0"
        previousNumber = 0
        currentNumber = ""
        total = 0
        lastButtonPressed = ""
        Operator = ""
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

