//
//  CalendarViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/29/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var imageCalendar: String = ""
    var titleCalendar : String = ""
    var dateCalendar : String = ""
    
    
    var tableArray = [
        
        (titleCalendar:"New Subpage for janet" ,
            imageCalendar : "Avatar-1" ,
            dateCalendar : "8 - 10 Am" ),
        
        (titleCalendar:"New Subpage for janet" ,
            imageCalendar : "Avatar" ,
            dateCalendar : "8 - 10 Am" ),
        
        (titleCalendar:"New Subpage for janet" ,
            imageCalendar : "Avatar-1" ,
            dateCalendar : "5 - 9 Am" )
        
        
        
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
        
        return tableArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellCalendar", forIndexPath: indexPath) as! CalendarTableViewCell
        
        var calendarsArray = tableArray[indexPath.row]
        
        cell.titlecalendar.text = calendarsArray.titleCalendar
        cell.dateCalendar.text = calendarsArray.dateCalendar
        cell.imageCalendar.image = UIImage(named: calendarsArray.imageCalendar)
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
