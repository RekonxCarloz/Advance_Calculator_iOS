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
    
    func calculator(symbol:String) -> Double?{
        if let n = number{
            if symbol == "+/-"{
                return n * -1
            }else if symbol == "AC"{
                return 0
            }else if symbol == "%"{
                return n / 100
            }
            return nil
        }
    }
}
