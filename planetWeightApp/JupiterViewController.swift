//
//  JupiterViewController.swift
//  planetWeightApp
//
//  Created by Enoch Ko on 2/10/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class JupiterViewController: UIViewController {



    @IBOutlet weak var earthWeight: UILabel!
    @IBOutlet weak var jupiterWeight: UILabel!
    @IBOutlet weak var jupiterMessage: UILabel!
    var earthWeightValue:Double = 0
    var jupiterMessageString:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jupiterMessage.text = jupiterMessageString
        self.earthWeight.text = String(earthWeightValue)
        self.jupiterWeight.text = String(earthWeightValue * 2.528)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "jupiterToMoonSegue" {
            let moonDestination = segue.destination as! MoonViewController
            moonDestination.moonMessageString = "Coming from Jupiter"
            moonDestination.earthWeightValue = self.earthWeightValue
        }else if segue.identifier == "jupiterToEarthSegue" {
            let earthDestination = segue.destination as! ViewController
            earthDestination.earthMessageString = "Coming from Jupiter"
            earthDestination.earthWeightValue = self.earthWeightValue
        }
    }

}
