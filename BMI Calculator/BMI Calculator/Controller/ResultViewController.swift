//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Aaraiz Wasim on 12/10/2023.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiText: String?
    
    @IBOutlet weak var bmiMessage: UILabel!
    @IBOutlet weak var bmiValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiValue.text = bmiText
        if Float(bmiText ?? "0") ?? 0 < 18.5 {
            bmiMessage.text = "Eat more pies!"
            view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        } else if Float(bmiText ?? "0") ?? 0 < 24.9 {
            bmiMessage.text = "Fit as a fiddle!"
            view.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)

        } else {
            bmiMessage.text = "Eat less pies!"
            view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)

        }
        
    }
  
    @IBAction func recalculateBMI(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
