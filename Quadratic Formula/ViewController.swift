//
//  ViewController.swift
//  Quadratic Formula
//
//  Created by Evan Doliszny on 7/2/17.
//  Copyright © 2017 Michael Doliszny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var labelAnswer1: UILabel!
    @IBOutlet weak var labelAnswer2: UILabel!
    @IBOutlet weak var topNegative: UIButton!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        topNegative.layer.cornerRadius = 7
        topNegative.clipsToBounds = true
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func onCalculateButtonPressed(_ sender: Any)
    {
        if let a = Double(aTextField.text!), let b = Double(bTextField.text!), let c = Double(cTextField.text!)
        {
            let inside = ((b * b) - (4 * a * c))
            let one = ((b * -1) + sqrt(inside)) / (2 * a)
            let two = ((b * -1) - sqrt(inside)) / (2 * a)
            labelAnswer1.text = String(one)
            labelAnswer2.text = String(two)
        }
    }
    
    @IBAction func topNegative(_ sender: Any)
    {
        let state = Double(aTextField.text!)
        aTextField.text = String(-state!)
    }
    @IBAction func midNegative(_ sender: Any)
    {
        let state2 = Double(bTextField.text!)
        bTextField.text = String(-state2!)
    }
    @IBAction func bottomNegative(_ sender: Any)
    {
        let state3 = Double(cTextField.text!)
        cTextField.text = String(-state3!)
    }
}
