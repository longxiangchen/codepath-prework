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
  @IBOutlet weak var tipSlider: UISlider!
  
  @IBOutlet weak var splitAmountLabel: UILabel!
  @IBOutlet weak var splitSlider: UISlider!
  @IBOutlet weak var splitNum: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    billAmountTextField.keyboardType = .decimalPad
    billAmountTextField.becomeFirstResponder()
  }
  
  func updateResult(_ tipPercentage: Double) {
    let bill = Double(billAmountTextField.text!) ?? 0
    let tip = tipPercentage * bill
    let total = tip + bill
    let splitNumber = Double(splitNum.text!) ?? 0
    let split = total / splitNumber
    tipAmountLabel.text = String(format: "$%.2f", tip)
    totalAmountLabel.text = String(format: "$%.2f", total)
    splitAmountLabel.text = String(format: "$%.2f", split)
  }
  @IBAction func sliderChange(_ sender: UISlider) {
    let step: Float = 0.01
    sender.value = round(sender.value / step) * step
    let labelVal = String(format: "%.0f", sender.value * 100);
    sliderValue.text = labelVal + "%"
    updateResult(Double(sender.value))
    tipControl.selectedSegmentIndex = UISegmentedControl.noSegment
  }
  @IBAction func calculateTip(_ sender: Any) {
    let tipPercentages = [0.15, 0.18, 0.2]
    tipSlider.setValue(Float(tipPercentages[tipControl.selectedSegmentIndex]), animated: true)
    updateResult(tipPercentages[tipControl.selectedSegmentIndex])
    sliderValue.text = String(format: "%.0f", tipPercentages[tipControl.selectedSegmentIndex] * 100) + "%"
  }

  @IBAction func getBillAmount(_ sender: Any) {
    let tipPercentage = Double(tipSlider.value)
    updateResult(tipPercentage)
  }
  @IBAction func onChangeSplitSlider(_ sender: UISlider) {
    let step: Float = 1
    sender.value = round(sender.value / step) * step
    splitNum.text = String(format: "%.0f", sender.value)
    updateResult(Double(tipSlider.value))
    
  }
  
}

