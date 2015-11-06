//
//  ViewController.swift
//  TableScrollProblemExample
//
//  Created by David Casserly on 06/11/2015.
//  Copyright © 2015 DevedUp Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    
    @IBAction func scrollToBottom(sender: AnyObject) {
        self.tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: 6, inSection: 0), atScrollPosition: UITableViewScrollPosition.Bottom, animated: true)
    }
    
    
    @IBAction func working(sender: AnyObject) {
        self.tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0), atScrollPosition: UITableViewScrollPosition.Top, animated: true)
    }
    
    @IBAction func notWorking(sender: AnyObject) {
        UIView.animateWithDuration(2.0) { () -> Void in
            self.tableView.scrollToRowAtIndexPath(NSIndexPath(forRow: 0, inSection: 0), atScrollPosition: UITableViewScrollPosition.Top, animated: false)
        }
    }
    
    
    // MARK: Table Data
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableCell", forIndexPath: indexPath)
        
        // I wouldn't do this normally... 
        let imageView = cell.contentView.viewWithTag(69) as! UIImageView        
        imageView.image = UIImage(named: "\(indexPath.row)")
        
        
        return cell
    }
    
    
    
}

