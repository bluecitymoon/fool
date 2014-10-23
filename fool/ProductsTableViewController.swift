//
//  ProductsTableViewController.swift
//  fool
//
//  Created by Jerry Jiang on 14/10/21.
//  Copyright (c) 2014年 Jerry Jiang. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController, UITableViewDataSource, UITableViewDelegate {
    var productsLoaded = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.productsLoaded = [
            Product(shortImage: "zoom1", name: "HP NoteBook", price: "5400 元", location: "泗泾－同润", distance: "1公里", date: "8-9"),
            Product(shortImage: "zoom2", name: "HP1 NoteBook", price: "5400 元", location: "泗泾－同润", distance: "1公里", date: "8-9"),
            Product(shortImage: "zoom2", name: "HP2 NoteBook", price: "5400 元", location: "泗泾－同润", distance: "200米", date: "10-9"),
            Product(shortImage: "zoom1", name: "HP3 NoteBook", price: "5400 元", location: "上海火车站", distance: "100米", date: "11-9"),
            Product(shortImage: "zoom2", name: "HP3 NoteBook", price: "5400 元", location: "正大广场", distance: "10米", date: "11-9"),
            Product(shortImage: "zoom2", name: "HP3 NoteBook", price: "5400 元", location: "开心路", distance: "200米", date: "11-9")
        ]
        
        var productCellNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tableView.registerNib(productCellNib, forCellReuseIdentifier: "customCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productsLoaded.count
    }
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
        let cell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as CustomTableViewCell
        
        
        
        var product : Product
        // Check to see whether the normal table or search results table is being displayed and set the Candy object from the appropriate array
        product = productsLoaded[indexPath.row]
        // Configure the cell
        
        cell.loadItem(product)
        return cell
    }
    /*
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView!, canEditRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView!, moveRowAtIndexPath fromIndexPath: NSIndexPath!, toIndexPath: NSIndexPath!) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView!, canMoveRowAtIndexPath indexPath: NSIndexPath!) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
