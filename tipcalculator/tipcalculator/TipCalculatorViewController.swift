//
//  TipCalculatorViewController.swift
//  tipcalculator
//
//  Created by Cassandra Sandquist on 6/30/18.
//  Copyright © 2018 Cassandra Sandquist. All rights reserved.
//

import UIKit

class TipCalculatorViewController: UIViewController {

    //output labels
    @IBOutlet weak var subtotal: UITextField!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var tipSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

