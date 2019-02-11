//
//  SettingsViewController.swift
//  TipCalcPreWork
//
//  Created by Jashmae Baculpo on 1/28/19.
//  Copyright © 2019 Jashmae Baculpo. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [0.15, 0.2, 0.25]
        
        let defaults = UserDefaults.standard
        defaults.set(array, forKey: "SavedStringArray")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
