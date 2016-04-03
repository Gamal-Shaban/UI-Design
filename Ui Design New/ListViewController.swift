//
//  ListViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/30/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    var imagelist: String = ""
    var titlelist : String = ""
    
    var listArray = [
        
        (titleCalendar:"Apples" ,
            imageCalendar : "icon-Check" ),
        
        (titleCalendar:"Banana" ,
            imageCalendar : "icon-Check" ),

        (titleCalendar:"juice" ,
            imageCalendar : "icon-Check" ),

        (titleCalendar:"Bread" ,
            imageCalendar : "icon-Check" ),

        (titleCalendar:"Cheese" ,
            imageCalendar : "icon-Check" ),

        (titleCalendar:"Milk" ,
            imageCalendar : "icon-Check" ),

        (titleCalendar:"Yogurt" ,
            imageCalendar : "icon-Check" ),

        
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
        
        return listArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("celllist", forIndexPath: indexPath) as! ListTableViewCell
        let listsArray = listArray[indexPath.row]
        
        cell.nameList.text = listsArray.titleCalendar
        cell.imagelistCell.image = UIImage(named: listsArray.imageCalendar)
        
        
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

}
