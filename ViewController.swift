//
//  ViewController.swift
//  Tipsss
//
//  Created by User  on 2/14/17.
//  Copyright © 2017 User . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var twosplitlabel: UILabel!
    @IBOutlet weak var threesplitlabel: UILabel!
    @IBOutlet weak var foursplitlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text="$0.00"
        twosplitlabel.text="$0.00"
        threesplitlabel.text="$0.00"
        foursplitlabel.text="$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onEditingchanged(_ sender: Any) {
     let tipPercentages = [0.18, 0.2, 0.22]
     let bill = Double(billField.text!) ?? 0
     let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
     let total = bill + tip
     let two = total / 2
     let three = total / 3
     let four = total / 4
     tipLabel.text = String(format: "$% 0.2f", tip)
     totalLabel.text = String(format: "$% 0.2f", total)
     twosplitlabel.text = String(format: "$% 0.2f", two)
     threesplitlabel.text = String(format: "$% 0.2f", three)
     foursplitlabel.text = String(format: "$% 0.2f", four)

    }

}

