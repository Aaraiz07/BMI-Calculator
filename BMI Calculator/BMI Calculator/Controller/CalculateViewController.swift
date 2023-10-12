//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Aaraiz Wasim on 05/10/2023.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    var bmiString = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func weightSilderAction(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
    }
    
    @IBAction func heightSliderAction(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f",sender.value) + "m"
    }
    
    @IBAction func calculateBMIPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / pow(height, 2)
        bmiString = String(format: "%.1f", bmi)
        self.performSegue(withIdentifier: "moveToNextScreen", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToNextScreen" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiText = bmiString
        }
    }
}

