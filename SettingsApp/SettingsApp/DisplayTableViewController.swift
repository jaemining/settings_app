//
//  DisplayViewController.swift
//  SettingsApp
//
//  Created by LimJaemin on 2017. 1. 24..
//  Copyright © 2017년 LimJaemin. All rights reserved.
//

import UIKit

class DisplayTableViewController: UITableViewController {
    let defaults = UserDefaults.standard

    @IBOutlet var sliderDisplayBrightness: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderDisplayBrightness.value = defaults.float(forKey: "brightness")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeDisplayBrightness(_ sender: UISlider) {
        UIScreen.main.brightness = CGFloat(sender.value)
        defaults.set(sender.value, forKey: "brightness")
    }
}

