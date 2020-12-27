//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by João Victor Ipirajá de Alencar on 26/12/20.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lblBmi: UILabel!
    @IBOutlet weak var lblAdvice: UILabel!
    var cb_aux:CalculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cb_aux.calculateBMI()
        lblBmi.text = cb_aux.getBMI()
        let advice = cb_aux.giveAdvice()
        lblAdvice.text = advice.advice
        self.view.backgroundColor = advice.color
       
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
