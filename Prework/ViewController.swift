//
//  ViewController.swift
//  Prework
//
//  Created by Home Laptop on 8/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func billAmountTextField(_ sender: Any) {
    }
    
    @IBAction func tipAmountLabel(_ sender: Any) {
    }
    @IBOutlet weak var tipControl: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text filed input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip* tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Update Total Amount
        totalLabel.text = String(format: "$.2f", total)
    }
    
}

