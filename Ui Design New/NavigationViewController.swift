//
//  NavigationViewController.swift
//  Ui Design New
//
//  Created by Gamal Shaban on 3/31/16.
//  Copyright © 2016 Gamal Shaban. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    
    
    var itemArray = [ "Home","Overview" , "Groups","Lists", "Profile","Timeline", "Settings", "Log Out" ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return itemArray.count
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cellNavigation", forIndexPath: indexPath)as! NavigationTableViewCell
         let itemsArray = itemArray[indexPath.row]
        cell.navigationLabel.text = itemsArray
        
        return cell
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
        let viewController:UIViewController
        
        switch row {
        case 0:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("HomeView") as! HomeViewController
            break
        case 1:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("OverViewView") as! OverViewViewController
            
            break
        case 2:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("GroupsView") as! GroupsViewController
            break
        case 3:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("ListView") as! ListViewController
            
            break
        case 4:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("ProfileView") as! ProfileViewController
            
            
            break
        case 7:
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("sign in") as! ViewController
            

            
            break
        default :
            viewController = self.storyboard!.instantiateViewControllerWithIdentifier("HomeView") as! HomeViewController
        }
        
        self.navigationController!.pushViewController(viewController, animated: true)
        
       

        
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
