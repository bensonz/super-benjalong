//
//  EventTableViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventTableViewController : UITableViewController{
    
    var events : [singleEvent] = [
        singleEvent(eventName: "Eating", eventHosts: ["Benson"], eventTime: NSDate(timeIntervalSinceNow: 10)),
        singleEvent(eventName: "Studying", eventHosts: ["Leo"], eventTime: NSDate(timeIntervalSinceNow: 100))
    ];
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("event") as? EventCell ?? EventCell()
        var all_events = self.events[indexPath.row]
        
        cell.eventName.text = all_events.getEventName()
        let dateFormatter = NSDateFormatter()
        //dateFormatter.dateFormat =
        let date = dateFormatter.stringFromDate(all_events.getEventTime())
        cell.eventTime.text = date
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "tableToDisplay":
            if var secondViewController = segue.destinationViewController as? EventDisplayViewController {
                if var cell = sender as? EventDisplayViewController {
                    //do nothing
                }
            }
        default:
            break
        }
        
    }

}