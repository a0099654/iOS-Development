//
//  ViewController.swift
//  BMICalc
//
//  Created by Stella on 5/3/16.
//  Copyright © 2016 Stella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var height: Float = 0.0
    var weight: Float = 0.0

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculatePressed(sender: AnyObject) {
        let bmi = weight / (height * height)
        let formatter = NSString(format: "%.01f", bmi)
        resultLabel.text = String(formatter)
    }

    @IBAction func weightMoved(sender: AnyObject) {
        let slider = sender as! UISlider
        let value = slider.value
        let formatter = NSString(format: "%.01f", value)
        weight = value
        weightLabel.text = String(formatter) + " kg"
    }
    
    @IBAction func heightMoved(sender: AnyObject) {
        //sender: caused the object that triggered
        let slider = sender as! UISlider
        let value = slider.value
        let formatter = NSString(format: "%.02f", value)
        height = value
        heightLabel.text = String(formatter) + " m"
        
    }
}

