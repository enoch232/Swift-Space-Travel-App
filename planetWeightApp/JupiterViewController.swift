//
//  JupiterViewController.swift
//  planetWeightApp
//
//  Created by Enoch Ko on 2/10/17.
//  Copyright © 2017 ASU. All rights reserved.
//

import UIKit

class JupiterViewController: UIViewController {



    @IBOutlet weak var moonWeight: UILabel!
    @IBOutlet weak var earthWeight: UILabel!
    @IBOutlet weak var jupiterWeight: UILabel!
    @IBOutlet weak var jupiterMessage: UILabel!
    var earthWeightValue:Double = 0
    var jupiterMessageString:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jupiterMessage.text = jupiterMessageString
        self.earthWeight.text = String(earthWeightValue)
        self.jupiterWeight.text = String(earthWeightValue * 2.4)
        self.moonWeight.text = String(earthWeightValue/6)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
