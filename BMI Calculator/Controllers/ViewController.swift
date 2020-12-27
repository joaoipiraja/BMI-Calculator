//
//  ViewController.swift
//  BMI Calculator
//
//  Created by João Victor Ipirajá de Alencar on 25/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    var cb:CalculatorBrain = CalculatorBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        cb.setHeight(height: sender.value)
        heightLabel.text = cb.getHeight()
    }
    
    
    @IBAction func weightSliderCnanged(_ sender: UISlider) {
        cb.setWeight(weight: sender.value)
        weightLabel.text = cb.getWeight()
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        switch segue.identifier{
            case "goToResults":
                let destinationVC = segue.destination as! ResultViewController
                destinationVC.cb_aux = cb
                break
            default:
                break
        }
    }
    
}

