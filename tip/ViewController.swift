//
//  ViewController.swift
//  tip
//
//  Created by Kater Ennada Helali on 8/24/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var TwoPeople: UILabel!
    @IBOutlet weak var ThreePeople: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        print("Hello")
        
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
    
        //bill, calculate tip and total and update all
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let bill = Double(billLabel.text!) ?? 0
        let tip = bill * tipPercentages[ tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
         
        
        let total2 = total / 2
        let total3 = total / 3
        
        TwoPeople.text = String(format: "$%.2f", total2)
        ThreePeople.text = String(format: "$%.2f", total3)
    }
}

