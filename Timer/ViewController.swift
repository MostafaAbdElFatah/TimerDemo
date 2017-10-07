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
    var timer = NSTimer()
    @IBOutlet weak var CounterLabel: UILabel!
    @IBOutlet weak var Pause_btn: UIButton!
    @IBOutlet weak var Start_btn: UIButton!
    @IBOutlet weak var Reset_btn: UIButton!
    
    //*************** functions ***************************
    @IBAction func Start(sender: UIButton) {
        Pause_btn.enabled = true
        Reset_btn.enabled = true
        Start_btn.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "timerAction" , userInfo: nil, repeats: true)
    }
    
    @IBAction func Pause(sender: UIButton) {
        timer.invalidate()
        Start_btn.enabled = true
        Pause_btn.enabled = false
    }
    
    @IBAction func Reset(sender: AnyObject) {
        Start_btn.enabled = true
        Pause_btn.enabled = false
        Reset_btn.enabled = false
        
        timer.invalidate()
        Counter = 0
    }
    
    func timerAction() {
        Counter += 1
        CounterLabel.text = "\(Counter)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Pause_btn.enabled = false
        Reset_btn.enabled = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

