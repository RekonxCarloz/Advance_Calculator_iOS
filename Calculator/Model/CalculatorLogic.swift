//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Carlos Cobian on 31/01/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic{
    private var number: Double?
    private var intermidiateCalculation: (operation: String, firstNumber: Double)?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    
    
    mutating func calculate(symbol:String) -> Double?{
        if let n = number{
            switch symbol{
            case "+/-":
                return n * -1
            case "AC":
                return 0
            case "%":
                return n / 100
            case "=":
                return performResult(secondNumber: n)
            default:
                intermidiateCalculation = (operation: symbol, firstNumber: n)
            }
        }
        return nil
    }
    
    private func performResult(secondNumber: Double)->Double?{
        if let numberOne = intermidiateCalculation?.firstNumber, let operation = intermidiateCalculation?.operation{
            switch operation{
            case "+":
                return numberOne + secondNumber
            case "-":
                return numberOne - secondNumber
            case "×":
                return numberOne * secondNumber
            case "÷":
                return numberOne / secondNumber
            default:
                fatalError("Fatal Error")
            }
        }
        return nil
    }
}
