//
//  ViewController.swift
//  Prework
//
//  Created by Kabir Dhillon on 9/27/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        billAmountTextField.becomeFirstResponder()
        
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = NSLocale.current
        
        let initialAmount = currencyFormatter.string(from: 0)
        
        // in the case billTF is empty
        guard ((billAmountTextField.text?.isEmpty) != nil) else {
            tipAmountLabel.text = initialAmount
            totalLabel.text = initialAmount
            return
        }
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Currency Formatter
        let currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = NSLocale.current
        
        // Update Tip and Total Amount Labels Using Currency Formatter
        tipAmountLabel.text = currencyFormatter.string(from: tip as NSNumber)
        totalLabel.text = currencyFormatter.string(from: total as NSNumber)
    }
    
}
