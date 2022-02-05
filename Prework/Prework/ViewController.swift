//
//  ViewController.swift
//  Prework
//
//  Created by Castillo Edith on 2/4/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill:Double = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPencentage
        let tipPencentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPencentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update tipAmount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update totalAmount
        totalAmountLabel.text = String(format: "$%.2f", total)
        
    }
    

}

