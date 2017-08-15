//
//  ThirdViewController.swift
//  TEST
//
//  Created by Admin on 2016-11-29.
//  Copyright © 2016 TEST. All rights reserved.
//

import Foundation
import UIKit
import GoogleMobileAds

class ThirdViewController: UIViewController {
    
    var textd = "seee"
    
    @IBOutlet weak var FinalResult: UITextView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func button(sender: AnyObject) {
        
        
        FinalResult.font = UIFont(name: "System - System italic", size: 14)
        
        FinalResult.text = "Note: \n \nThese online heredity calculators use simplified models to calculate traits and their certainty is far from 100%. Personal Report and Heredity Report give better results, providing that you had your genome sequenced by a commercial personal genomics companies like 23andMe, deCODEMe, Ancestry.com or Family Tree DNA. \n \nFinal result:\n \nDimples\n \nEstimates whether the child may inherit dimples from his parents. \n \n\(FinalDimple) \n \nCleft Chin\n \nPredicts whether the child inherits cleft chin from his parents. \n \n\(FinalCC) \n \nEar Lobe\n \nCalculates whether the child inherits attached or unattached ear lobes. \n \n\(FinalEL) \n \nEye Color\n \nEstimates what eye color the child inherits from his parents. \n \n\(FinalColor) \n \nLactose Intolerance\n \nChecks whether the child may inherit lactose intolerance trait. \n \n\(FinalLactose)"
        FinalResult.selectable = false
        FinalResult.editable = false
        FinalResult.autocorrectionType = UITextAutocorrectionType.No
        FinalResult.spellCheckingType = UITextSpellCheckingType.No
        FinalResult.textAlignment = .Justified
        FinalResult.font = UIFont.systemFontOfSize(14)    }
    

    @IBOutlet weak var bannerView: GADBannerView!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-1/2"
        bannerView.rootViewController = self
        bannerView.loadRequest(GADRequest())

        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
}
