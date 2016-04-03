//
//  GroupsViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/30/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var titleGroups :String = ""
    
    var itemGroup :String = ""
    
    var colorGroups : String = ""
    
    var groupArray = [
        
        (titleGroups:"Shop",
            itemGroup : "25 ITEMS",
            colorGroups :"#50d2c2"),
        
        
        (titleGroups:"Work",
            itemGroup : "12 ITEMS",
            colorGroups :"#6563a4"),
        
        
        (titleGroups:"Health",
            itemGroup : "3 ITEMS",
            colorGroups :"#8c88ff"),
        
        (titleGroups:"Travel",
            itemGroup : "8 ITEMS",
            colorGroups :"#fcab53"),
        
        (titleGroups:"Bills",
            itemGroup : "16 ITEMS",
            colorGroups :"#d667cd"),
        
        (titleGroups:"Auto",
            itemGroup : "14 ITEMS",
            colorGroups :"#ff3366")
        

        ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return groupArray.count
        
    }
  func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cellGroups", forIndexPath: indexPath) as! GroupsCollectionViewCell
        
    let groupArrays = groupArray[indexPath.row]
        
    cell.titlecollection.text = groupArrays.titleGroups
    cell.itemcollection.text = groupArrays.itemGroup
    cell.colorcollection.backgroundColor = hexStringToUIColor(groupArrays.colorGroups)
        
        
        
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
    
    func collectionView(collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                                 sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: ((UIScreen.mainScreen().bounds.width - 1) / 2) , height: 113.0)
    }

}
