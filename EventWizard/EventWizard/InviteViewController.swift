//
//  InviteViewController.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIkit

class InviteViewController : UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    @IBOutlet weak var tableV: UITableView!
    
    var friends : [user]? = nil
    
    override func viewDidLoad() {
        friends = CONSTANTS().users
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("friends") as? FriendCell ?? FriendCell()
        if friends == nil{
            cell.nameDisp.text = "NO PERSON"
        }else{
            cell.nameDisp.text = friends![indexPath.row].getName()
        }
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends!.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "":
            if var secondViewController = segue.destinationViewController as? EventDisplayViewController {
                if var cell = sender as? EventCell {
                    secondViewController.event = cell.event
                }
            }
        default:
            break
        }
    }
}
