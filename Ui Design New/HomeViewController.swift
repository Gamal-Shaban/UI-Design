//
//  HomeViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/29/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var imageTable: String = ""
    var titleTable : String = ""
    var date : String = ""
    
    
    var tableArray = [
       
        (titleTable:"New Subpage for janet" ,
        imageTable : "Avatar-1" ,
        date : "8 - 10 Am" ),
    
        (titleTable:"New Subpage for janet" ,
            imageTable : "Avatar" ,
            date : "8 - 10 Am" ),
        
        (titleTable:"New Subpage for janet" ,
            imageTable : "Avatar-1" ,
            date : "5 - 9 Am" )
    
    
    
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
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! HomeTableViewCell
        
        var tablsArray = tableArray[indexPath.row]
        
        cell.titleLable.text = tablsArray.titleTable
        cell.dateLable.text = tablsArray.date
       
        cell.imageCell.image = UIImage(named: tablsArray.imageTable)
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
