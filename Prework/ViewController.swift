//
//  ViewController.swift
//  Prework
//
//  Created by Jim Chen on 2/4/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var sliderValue: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateResult(_ tipPercentage: Double) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tip = tipPercentage * bill
        let total = tip + bill
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func sliderChange(_ sender: UISlider) {
        let step: Float = 0.01
        sender.value = round(sender.value / step) * step
        let labelVal = String(format: "%.0f", sender.value * 100);
        sliderValue.text = labelVal + "%"
        
        updateResult(Double(sender.value))
    }
    @IBAction func calculateTip(_ sender: Any) {
        // setup array that sets up the tipControl values
        let tipPercentages = [0.15, 0.18, 0.2]
        // tip is just bill * the tipPercentages[index]
        updateResult(tipPercentages[tipControl.selectedSegmentIndex])
    }

}

