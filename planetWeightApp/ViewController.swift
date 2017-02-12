//
//  ViewController.swift
//  planetWeightApp
//
//  Created by Enoch Ko on 2/9/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var earthMessage: UILabel!
    @IBOutlet weak var weightTextField: UITextField!
    var earthMessageString:String = ""
    var earthWeightValue:Double = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        self.earthMessage.text = earthMessageString
        self.weightTextField.text = String(earthWeightValue)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let moonDestination = segue.destination as! MoonViewController
        moonDestination.moonMessageString = "Coming from Earth"
        moonDestination.earthWeightValue = Double(self.weightTextField.text!)!
    }


}

