//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by João Victor Ipirajá de Alencar on 26/12/20.
//

import Foundation
import UIKit
class CalculatorBrain{
    
    private var weight:Float = 0.0
    private var height:Float = 0.0
    private var bmi:Float = 0.0
   
    func setWeight(weight:Float){
        self.weight = weight
    }
    
    func setHeight(height:Float){
        self.height = height
    }
    
    func getWeight() -> String{
        return String(format:"%.1fkg",self.weight)
    }

    func getHeight() -> String{
        return String(format: "%.2fkg", self.height)
    }
    
    func getBMI()->String{
        return String(format:"%.1f",self.bmi)
    }
    func calculateBMI(){
        self.bmi = self.weight/(pow(self.height,2))
    }
    
    func giveAdvice() -> bmiAdvice{
        if(self.bmi < 18.5){
            return bmiAdvice(advice: "You're Undwerwight!", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        }else if(self.bmi >= 18.5) && (self.bmi < 24.9){
            return bmiAdvice(advice: "You're Normal!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        }else if(self.bmi >= 24.9) && (self.bmi < 29.9){
            return bmiAdvice(advice: "You're Overweight!", color: #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))
        }else if(self.bmi >= 30) && (self.bmi < 34.9){
            return bmiAdvice(advice: "You're Obese!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }else if(self.bmi > 35){
            return bmiAdvice(advice: "You're extremely obese!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }else{
           return bmiAdvice(advice: "Please Try Again", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }

    }
    
}
