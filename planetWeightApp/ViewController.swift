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
    var earthMessageString:String = "0"
    @IBOutlet weak var weightTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        this.earthMessage.text = earthMessageString
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
        moonDestination.moonMessage.text = "Coming from Earth"
        moonDestination.earthWeight.text = weightTextField.text!
    }


}

