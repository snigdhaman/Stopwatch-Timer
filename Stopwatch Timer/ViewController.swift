//
//  ViewController.swift
//  Stopwatch Timer
//
//  Created by Chatterjee, Snigdhaman on 24/12/15.
//  Copyright © 2015 Chatterjee, Snigdhaman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var timer = NSTimer()
    var sec = 0
    var min = 0
    
    @IBAction func start(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    
    @IBAction func reset(sender: AnyObject) {
        
        timer.invalidate()
        sec = 0
        min = 0
        outputLabel.text = "\(min) m \(sec) s"
    }
    func increaseTimer() {
        
        getOutput()
        outputLabel.text = "\(min) m \(sec) s"
        sec++
    }
    
    func getOutput() {
        
        if sec == 60 {
            sec = 0
            min++
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

