//
//  BackViewController.swift
//  Test
//
//  Created by Mac on 12/1/16.
//  Copyright © 2016 Mac. All rights reserved.
//

import UIKit
import GoogleMobileAds

var MotherResult = 0
var FatherResult = 0
var FinalDimple = "Result unknown. Please go back and input correct value."

var MortherCC = 0
var FatherCC = 0
var FinalCC = "Result unknown. Please go back and input correct value."

var MotherEL = 0
var FatherEL = 0
var FinalEL = "Result unknown. Please go back and input correct value."

var MotherColor = 0
var FatherColor = 0
var FinalColor = "Result unknown. Please go back and input correct value."

var MotherLactose = 0
var FatherLactose = 0
var FinalLactose = "Result unknown. Please go back and input correct value."

class BackViewController: UIViewController {
    


    @IBOutlet weak var FD: UISegmentedControl!
    @IBOutlet weak var MD: UISegmentedControl!
    
    @IBOutlet weak var MC: UISegmentedControl!
    
    
    @IBOutlet weak var FC: UISegmentedControl!
 
    @IBOutlet weak var ML: UISegmentedControl!

    @IBOutlet weak var FL: UILabel!
    
    @IBOutlet weak var FL1: UISegmentedControl!
    
    @IBOutlet weak var FatherLactoseOutlet: UISegmentedControl!
    @IBOutlet weak var MotherLactoseOutlet: UISegmentedControl!
    @IBOutlet weak var FatherEyeColorOutlet: UISegmentedControl!
    @IBOutlet weak var MotherEyeColorOutlet: UISegmentedControl!
    @IBAction func MD(sender: AnyObject) {
  
    if (MD.selectedSegmentIndex == 0)
    {
    MotherResult = 0;
    }
    else if(MD.selectedSegmentIndex == 1)
   {
   MotherResult = 1;
   }
   else if(MD.selectedSegmentIndex == 2)
   {
   MotherResult = 2;
   }
        
        
    }


    @IBAction func FD(sender: AnyObject) {
 
    
        
        if (FD.selectedSegmentIndex == 0)
        {
            FatherResult = 0;
            
         
        }
        else if(FD.selectedSegmentIndex == 1)
        {
            FatherResult = 1;
        }
        else if(FD.selectedSegmentIndex == 2)
        {
            FatherResult = 2;
        }
        
        if MotherResult == 0 && FatherResult == 0 {
            FinalDimple = "Has dimples 89% No dimples 11%"
            
        } else if MotherResult == 0 && FatherResult == 1
        {
            FinalDimple = "Has dimples 67% No dimples 33%"
        } else if MotherResult == 1 && FatherResult == 0
        {
            FinalDimple = "Has dimples 67% No dimples 33%"
        } else if MotherResult == 0 && FatherResult == 2
        {
            FinalDimple = "Has dimples 83% No dimples 17%"
        } else if MotherResult == 2 && FatherResult == 0
        {
           FinalDimple = "Has dimples 83% No dimples 17%"
        } else if MotherResult == 1 && FatherResult == 1
        {
            FinalDimple = "Has dimples 89% No dimples 11%"
        } else if MotherResult == 2 && FatherResult == 2
        {
          FinalDimple = "Has dimples 75% No dimples 25%"
        } else if MotherResult == 2 && FatherResult == 1
        {
            FinalDimple = "Has dimples 50% No dimples 50%"
        } else if MotherResult == 1 && FatherResult == 2
        {
            FinalDimple = "Has dimples 50% No dimples 50%"
        }
        else {
            FinalDimple = "Result unknown. Please go back and input correct value."
        }
        
        
    }
    
    @IBAction func MCAction(sender: AnyObject) {
        
        if (MC.selectedSegmentIndex == 0)
        {
            MortherCC = 0;
        }
        else if(MC.selectedSegmentIndex == 1)
        {
            MortherCC = 1;
        }
        else if(MC.selectedSegmentIndex == 2)
        {
            MortherCC = 2;
        }
    }
    

    @IBAction func FCAction(sender: AnyObject) {
        
        if (FC.selectedSegmentIndex == 0)
        {
            FatherCC = 0;
            
            
        }
        else if(FC.selectedSegmentIndex == 1)
        {
            FatherCC = 1;
        }
        else if(FC.selectedSegmentIndex == 2)
        {
            FatherCC = 2;
        }
        
        if MortherCC == 0 && FatherCC == 0 {
            FinalCC = "Has Cleft Chin 89% No Cleft Chin 11%"
            
        } else if MortherCC == 0 && FatherCC == 1
        {
            FinalCC = "Has Cleft Chin 67% No Cleft Chin 33%"
        } else if MortherCC == 1 && FatherCC == 0
        {
            FinalCC = "Has Cleft Chin 67% No Cleft Chin 33%"
        } else if MortherCC == 0 && FatherCC == 2
        {
            FinalCC = "Has Cleft Chin 83% No Cleft Chin 17%"
        } else if MortherCC == 2 && FatherCC == 0
        {
            FinalCC = "Has Cleft Chin 83% No Cleft Chin 17%"
        } else if MortherCC == 1 && FatherCC == 1
        {
            FinalCC = "Has Cleft Chin 100% No Cleft Chin 0%"
        } else if MortherCC == 2 && FatherCC == 2
        {
            FinalCC = "Has Cleft Chin 75% No Cleft Chin 25%"
        } else if MortherCC == 2 && FatherCC == 1
        {
            FinalCC = "Has Cleft Chin 50% No Cleft Chin 50%"
        } else if MortherCC == 1 && FatherCC == 2
        {
            FinalCC = "Has Cleft Chin 50% No Cleft Chin 50%"
        }
        else {
            FinalCC = "Result unknown. Please go back and input correct value."
        }
    }
    
    @IBAction func MLA(sender: AnyObject) {
        
        if (ML.selectedSegmentIndex == 0)
        {
            MotherEL = 0;
        }
        else if(ML.selectedSegmentIndex == 1)
        {
            MotherEL = 1;
        }
        else if(ML.selectedSegmentIndex == 2)
        {
            MotherEL = 2;
        }
    }
    
    @IBAction func FLA(sender: AnyObject) {
        
        if (FL1.selectedSegmentIndex == 0)
        {
            FatherEL = 0;
            
            
        }
        else if(FL1.selectedSegmentIndex == 1)
        {
            FatherEL = 1;
        }
        else if(FL1.selectedSegmentIndex == 2)
        {
            FatherEL = 2;
        }
        
        
        if MotherEL == 0 && FatherEL == 0 {
            FinalEL = "Earl Lobe unattached 89% attached 11%"
            
        } else if MotherEL == 0 && FatherEL == 1
        {
            FinalEL = "Earl Lobe unattached 67% attached 33%"
        } else if MotherEL == 1 && FatherEL == 0
        {
            FinalEL = "Earl Lobe unattached 67% attached 33%"
        } else if MotherEL == 0 && FatherEL == 2
        {
            FinalEL = "Earl Lobe unattached 83% attached 17%"
        } else if MotherEL == 2 && FatherEL == 0
        {
            FinalEL = "Earl Lobe unattached 83% attached 17%"
        } else if MotherEL == 1 && FatherEL == 1
        {
            FinalEL = "Earl Lobe unattached 89% attached 11%"
        } else if MotherEL == 2 && FatherEL == 2
        {
            FinalEL = "Earl Lobe unattached 75% attached 25%"
        } else if FatherEL == 2 && MotherEL == 2
        {
            FinalEL = "Earl Lobe unattached 75% attached 25%"
        }
        else if MotherEL == 2 && FatherEL == 1
        {
            FinalEL = "Earl Lobe unattached 50% attached 50%"
        } else if MotherEL == 1 && FatherEL == 2
        {
            FinalEL = "Earl Lobe unattached 50% attached 50%"
        }
        else {
            FinalEL = "Result unknown. Please go back and input correct value."
        }
    }
    
    @IBAction func MotherEyeColorAction(sender: AnyObject) {
        
        if (MotherEyeColorOutlet.selectedSegmentIndex == 0)
        {
            MotherColor = 0;
        }
        else if(MotherEyeColorOutlet.selectedSegmentIndex == 1)
        {
            MotherColor = 1;
        }
        else if(MotherEyeColorOutlet.selectedSegmentIndex == 2)
        {
            MotherColor = 2;
        }
        else if(MotherEyeColorOutlet.selectedSegmentIndex == 3)
        {
            MotherColor = 3;
        }
        
    }
    

    @IBAction func FatherEyeColorAction(sender: AnyObject) {
        
        if (FatherEyeColorOutlet.selectedSegmentIndex == 0)
        {
            FatherColor = 0;
            
        }
        else if(FatherEyeColorOutlet.selectedSegmentIndex == 1)
        {
            FatherColor = 1;
        }
        else if(FatherEyeColorOutlet.selectedSegmentIndex == 2)
        {
            FatherColor = 2;
        }
        else if(FatherEyeColorOutlet.selectedSegmentIndex == 3)
        {
            FatherColor = 3;
        }
        
        if MotherColor == 0 && FatherColor == 0 {
            FinalColor = "Brown 90% Blue 9% Green 1%"
            
        } else if MotherColor == 0 && FatherColor == 1
        {
            FinalColor = "Brown 68% Blue 30% Green 2%"
        } else if MotherColor == 1 && FatherColor == 0
        {
            FinalColor = "Brown 68% Blue 30% Green 2%"
        } else if MotherColor == 2 && FatherColor == 0
        {
            FinalColor = "Brown 68% Blue 22% Green 10%"
        } else if MotherColor == 0 && FatherColor == 2
        {
            FinalColor = "Brown 68% Blue 22% Green 10%"
        } else if MotherColor == 2 && FatherColor == 1
        {
            FinalColor = "Brown 0% Blue 77% Green 23%"
        } else if MotherColor == 1 && FatherColor == 2
        {
            FinalColor = "Brown 0% Blue 77% Green 23%"
        } else if MotherColor == 3 && FatherColor == 0
        {
            FinalColor = "Brown 85% Blue 14% Green 1%"
        } else if MotherColor == 0 && FatherColor == 3
        {
            FinalColor = "Brown 85% Blue 14% Green 1%"
        } else if MotherColor == 3 && FatherColor == 1
        {
            FinalColor = "Brown 53% Blue 44% Green 3%"
        } else if MotherColor == 1 && FatherColor == 3
        {
            FinalColor = "Brown 53% Blue 44% Green 3%"
        } else if MotherColor == 3 && FatherColor == 2
        {
            FinalColor = "Brown 53% Blue 33% Green 14%"
        } else if MotherColor == 2 && FatherColor == 3
        {
            FinalColor = "Brown 53% Blue 33% Green 14%"
        } else if MotherColor == 1 && FatherColor == 1
        {
            FinalColor = "Brown 0% Blue 95% Green 5%"
        }
            else if MotherColor == 2 && FatherColor == 2
        {
            FinalColor = "Brown 0% Blue 0% Green 100%"
        }
            else if MotherColor == 3 && FatherColor == 3
        {
            FinalColor = "Brown 78% Blue 20% Green 2%"
        }
        
        else {
            FinalColor = "Result unknown. Please go back and input correct value."
        }
        
    }
    
    @IBAction func MotherLactoseAction(sender: AnyObject) {
        
        if (MotherLactoseOutlet.selectedSegmentIndex == 0)
        {
            MotherLactose = 0;
        }
        else if(MotherLactoseOutlet.selectedSegmentIndex == 1)
        {
            MotherLactose = 1;
        }
        else if(MotherLactoseOutlet.selectedSegmentIndex == 2)
        {
            MotherLactose = 2;
        }
        
    }
    
    @IBAction func FatherLactoseAction(sender: AnyObject) {
        
        if (FatherLactoseOutlet.selectedSegmentIndex == 0)
        {
            FatherLactose = 0;
            
        }
        else if(FatherLactoseOutlet.selectedSegmentIndex == 1)
        {
            FatherLactose = 1;
        }
        else if(FatherLactoseOutlet.selectedSegmentIndex == 2)
        {
            FatherLactose = 2;
        }
        
        if MotherLactose == 0 && FatherLactose == 0 {
            FinalLactose = "100% Intolerant 0% Tolerant"
            
        } else if MotherLactose == 0 && FatherLactose == 1
        {
            FinalLactose = "36% Intolerant 64% Tolerant"
        } else if MotherLactose == 1 && FatherLactose == 0
        {
            FinalLactose = "36% Intolerant 64% Tolerant"
        } else if MotherLactose == 0 && FatherLactose == 2
        {
            FinalLactose = "57%% Intolerant 43% Tolerant"
        } else if MotherLactose == 2 && FatherLactose == 0
        {
            FinalLactose = "57% Intolerant 43% Tolerant"
        } else if MotherLactose == 1 && FatherLactose == 2
        {
            FinalLactose = "21% Intolerant 79% Tolerant"
        } else if MotherLactose == 2 && FatherLactose == 1
        {
            FinalLactose = "21% Intolerant 79% Tolerant"
        } else if MotherLactose == 1 && FatherLactose == 1
        {
            FinalLactose = "13% Intolerant 87% Tolerant"
        } else if MotherLactose == 2 && FatherLactose == 2
        {
            FinalLactose = "32% Intolerant 68% Tolerant"
        }
        else {
            FinalLactose = "Result unknown. Please go back and input correct value."
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backClick(sender: AnyObject) {
        
        self.navigationController?.popViewControllerAnimated(true)
    
    }
    
 

}
