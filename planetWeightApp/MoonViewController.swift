//
//  MoonViewController.swift
//  planetWeightApp
//
//  Created by Enoch Ko on 2/10/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class MoonViewController: UIViewController {

    @IBOutlet weak var earthWeight: UILabel!
    @IBOutlet weak var moonWeight: UILabel!
    @IBOutlet weak var moonMessage: UILabel!
    var earthWeightValue:Double = 0
    var moonMessageString:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.moonMessage.text = moonMessageString
        self.earthWeight.text = String(earthWeightValue)
        self.moonWeight.text = String(earthWeightValue/6)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moonToJupiterSegue" {
            let jupiterDestination = segue.destination as! JupiterViewController
            jupiterDestination.jupiterMessageString = "Coming from Moon"
            jupiterDestination.earthWeightValue = self.earthWeightValue
        }
    }
    
    @IBAction func unwindToViewController2(segue: UIStoryboardSegue) {
        let jupiterSource = segue.source as! JupiterViewController
        self.earthWeightValue = jupiterSource.earthWeightValue
        self.moonMessage.text = "Coming from Jupiter!"
    }
}
