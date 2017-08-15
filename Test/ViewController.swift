//
//  ViewController.swift
//  Test
//
//  Created by Mac on 12/1/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    @IBOutlet weak var container1: UIView!
    @IBOutlet weak var container2: UIView!
    @IBOutlet weak var container3: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func firstTabClick(sender: AnyObject) {
       
        UIView.animateWithDuration(0.5, animations: {
            self.container1.alpha = 1
            self.container2.alpha = 0
            self.container3.alpha = 0
            
        })
    }
    
    @IBAction func secondTabClick(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: {
            self.container1.alpha = 0
            self.container2.alpha = 1
            self.container3.alpha = 0
            
        })
    }
    
    @IBAction func thirdTabClick(sender: AnyObject) {
        
        UIView.animateWithDuration(0.5, animations: {
            self.container1.alpha = 0
            self.container2.alpha = 0
            self.container3.alpha = 1
            
        })
    }
    
    
    

}

