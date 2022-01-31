//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Carlos Cobian on 31/01/22.
//  Copyright © 2022 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic{
    var number: Double
    
    init(number: Double){
        self.number = number
    }
    
    func calculator(symbol:String) -> Double?{
        if symbol == "+/-"{
            return number * -1
        }else if symbol == "AC"{
            return 0
        }else if symbol == "%"{
            return number / 100
        }
        return nil
    }
}
