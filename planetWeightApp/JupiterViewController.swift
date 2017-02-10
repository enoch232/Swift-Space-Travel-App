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
    var jupiterMessageString:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        self.jupiterMessage.text = jupiterMessageString
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
