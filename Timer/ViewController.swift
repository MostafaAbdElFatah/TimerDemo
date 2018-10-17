//
//  ViewController.swift
//  Timer
//
//  Created by Mostafa on 2/2/17.
//  Copyright © 2017 Mostafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //***************** variables ****************************
    
    var Counter = 0
    var timer = Timer()
    @IBOutlet weak var CounterLabel: UILabel!
    @IBOutlet weak var Pause_btn: UIButton!
    @IBOutlet weak var Start_btn: UIButton!
    @IBOutlet weak var Reset_btn: UIButton!
    
    //*************** functions ***************************
    @IBAction func Start(_ sender: UIButton) {
        Pause_btn.isEnabled = true
        Reset_btn.isEnabled = true
        Start_btn.isEnabled = false
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerAction) , userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(_ sender: UIButton) {
        timer.invalidate()
        Start_btn.isEnabled = true
        Pause_btn.isEnabled = false
    }
    
    @IBAction func Reset(_ sender: AnyObject) {
        Start_btn.isEnabled = true
        Pause_btn.isEnabled = false
        Reset_btn.isEnabled = false
        
        timer.invalidate()
        Counter = 0
    }
    
    @objc func timerAction() {
        Counter += 1
        CounterLabel.text = "\(Counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Pause_btn.isEnabled = false
        Reset_btn.isEnabled = false
    }

}

