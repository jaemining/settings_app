//
//  VolumeTableViewController.swift
//  SettingsApp
//
//  Created by LimJaemin on 2017. 1. 24..
//  Copyright © 2017년 LimJaemin. All rights reserved.
//


import UIKit
import MediaPlayer


class VolumeTableViewController: UITableViewController {
    let defaults = UserDefaults.standard

    @IBOutlet var sliderVolume: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderVolume.value = defaults.float(forKey: "volume")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func changeVolume(_ sender: UISlider) {
        (MPVolumeView().subviews.filter{NSStringFromClass($0.classForCoder) == "MPVolumeSlider"}.first as? UISlider)?.setValue(sender.value, animated: false)
        
        defaults.set(sender.value, forKey: "volume")
    }
}
