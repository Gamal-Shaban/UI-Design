//
//  OverViewViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/30/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class OverViewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var typeOverview :String = ""
    
    var numberOverview :String = ""
    
    var coloroverview : String = ""
    
    var overviewArray = [
       
        (typeOverview:"Completed",
         numerOverview : "120",
            coloroverview :"#50d2c2"),

    
        (typeOverview:"Snoozed",
            numerOverview : "54",
            coloroverview :"#fcab53"),
        

        (typeOverview:"Overdue",
            numerOverview : "85",
            coloroverview :"#ba77ff"),
        

    
    
    ]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return overviewArray.count
        
    }
    
    
func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellOverview", forIndexPath: indexPath)as! OverViewTableViewCell
        
      let  overviewArrays = overviewArray[indexPath.row]
        
        cell.numberOverviewcell.text = overviewArrays.numerOverview
        cell.typeOverviercell.text = overviewArrays.typeOverview
    cell.colorOverviewcell.backgroundColor = hexStringToUIColor(overviewArrays.coloroverview)
        
        return cell
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet() as NSCharacterSet).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.grayColor()
        }
        
        var rgbValue:UInt32 = 0
        NSScanner(string: cString).scanHexInt(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
