//
//  EventTableViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventTableViewController : UITableViewController,UITableViewDataSource{
    
    var RSManager : ItemsManager = ItemsManager()
    var events : [singleEvent]? = nil;
    
    override func viewDidLoad() {
        events = RSManager.items
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("event") as? EventCell ?? EventCell()
        var one_event = self.events![indexPath.row]
        
        cell.event = one_event
        //host @ location @ time
        var hlt :String = one_event.getEventType() + " @ " +
            one_event.getEventLocation() + " @ " + one_event.getEventTimeInStringFormat()
        cell.l_eHostsATlocationATtime.text = hlt
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events!.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "eventDetail":
            // transfer details to the next view controller
            if var secondViewController = segue.destinationViewController as? EventDisplayViewController {
                if var cell = sender as? EventCell {
                    secondViewController.event = cell.event
                }
            }
        case "addNewEvent":
            // Here we only need to get back the event, so nothing to do for creating one
            break
        default:
            break
        }
        
    }
    
    @IBAction func unwindToHome(segue: UIStoryboardSegue){
        if (segue.identifier == "finalized"){
            RSManager.save()
        }
    }

}
