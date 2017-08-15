//
//  FirstViewController.swift
//  TEST
//
//  Created by Admin on 2016-11-29.
//  Copyright © 2016 TEST. All rights reserved.
//

import UIKit
import GoogleMobileAds

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var firsttableview: UITableView!
    

    
    let list = ["\u{1F500}Eye Color", "\u{1F500}Hair Color", "\u{1F500}Lactose Intolerance", "\u{1F500}Dimples", "\u{1F500}Cleft Chin", "\u{1F500}Ear Lobe"]
    let listdesc = ["Estimates what eye color the child inherits", "Calculates what hair color the child may inherit", "Checks whether the child may inherit LI", "Estimates whether the child may inherit dimples", "Predicts whether the child inherits cleft chin", "Calculates whether the child inherits ear lobes"]
    let identities = ["A", "B", "C"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firsttableview.delegate=self
        firsttableview.dataSource=self
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        let StoryBoard  = UIStoryboard(name: "Main", bundle: nil)
        let md_1=self.storyboard?.instantiateViewControllerWithIdentifier("MD") as! BackViewController
        let fd_1=self.storyboard?.instantiateViewControllerWithIdentifier("FD") as! BackViewController
        let mc_1=self.storyboard?.instantiateViewControllerWithIdentifier("MC") as! BackViewController
        let fc_1=self.storyboard?.instantiateViewControllerWithIdentifier("FC") as! BackViewController
        let ml_1=self.storyboard?.instantiateViewControllerWithIdentifier("ML") as! BackViewController
        let fl_1=self.storyboard?.instantiateViewControllerWithIdentifier("FL") as! BackViewController
        let mec_1=self.storyboard?.instantiateViewControllerWithIdentifier("MEC") as! BackViewController
        let fec_1=self.storyboard?.instantiateViewControllerWithIdentifier("FEC") as! BackViewController
        let mli_1=self.storyboard?.instantiateViewControllerWithIdentifier("MLI") as! BackViewController
        let fli_1=self.storyboard?.instantiateViewControllerWithIdentifier("FLI") as! BackViewController
        let mhc_1=self.storyboard?.instantiateViewControllerWithIdentifier("MHC") as! BackViewController
        let fhc_1=self.storyboard?.instantiateViewControllerWithIdentifier("FHC") as! BackViewController
        
        if(list[indexPath.row] == "\u{1F500}Dimples") {
//            var vcA = StoryBoard.instantiateViewControllerWithIdentifier("A") as! A
            self.navigationController?.pushViewController(md_1, animated: true)
        } else if(list[indexPath.row] == "\u{1F500}Cleft Chin") {
 //           var vcB = StoryBoard.instantiateViewControllerWithIdentifier("B") as! B
            self.navigationController?.pushViewController(mc_1, animated: true)
        } else if(list[indexPath.row] == "\u{1F500}Ear Lobe") {
            self.navigationController?.pushViewController(ml_1, animated: true)
        } else if(list[indexPath.row] == "\u{1F500}Eye Color") {
            self.navigationController?.pushViewController(mec_1, animated: true)
        } else if(list[indexPath.row] == "\u{1F500}Lactose Intolerance") {
            self.navigationController?.pushViewController(mli_1, animated: true)
        }  else if (list[indexPath.row] == "\u{1F500}Hair Color") {
            self.navigationController?.pushViewController(mhc_1, animated: true)
        }
        
        //let go=self.storyboard?.instantiateViewControllerWithIdentifier("Backview") as! BackViewController
        //self.navigationController?.pushViewController(go, animated: true)
        
    }
   
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier: String = "firstcell"
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: cellIdentifier)
        
        cell.textLabel?.text = list[indexPath.row]
        cell.detailTextLabel?.text = listdesc[indexPath.row]
        
        return cell
    }
    

}

