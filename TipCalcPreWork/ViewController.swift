//
//  ViewController.swift
//  TipCalcPreWork
//
//  Created by Jashmae Baculpo on 1/23/19.
//  Copyright © 2019 Jashmae Baculpo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billFIeld: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var twoPeepsLabel: UILabel!
    
  
    @IBOutlet weak var threePeepsLabel: UILabel!
    
    @IBOutlet weak var fourPeepsLabel: UILabel!
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        
        print("hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTIp(_ sender: Any) {
        let bill = Double(billFIeld.text!) ?? 0
        let tipPercentages = [0.15, 0.2, 0.25]
       
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = tip + bill
        
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        let divide2 = total/2
        twoPeepsLabel.text = String(format: "$%.2f", divide2)
        let divide3 = total/3
        threePeepsLabel.text = String(format: "$%.2f", divide3)
        let divide4 = total/4
        fourPeepsLabel.text = String(format: "$%.2f", divide4)
    }
}

