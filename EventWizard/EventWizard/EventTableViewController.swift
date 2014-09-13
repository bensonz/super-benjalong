//
//  EventTableViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventTableViewController : UITableViewController,UITableViewDataSource{
    
    var events : [singleEvent] = [
        singleEvent(eventName: "Eating", eventHosts: ["Benson"], eventTime: NSDate.date()),
        singleEvent(eventName: "Studying", eventHosts: ["Leo,Jason"], eventTime: NSDate.date())
        ];
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("event") as? EventCell ?? EventCell()
        var all_events = self.events[indexPath.row]
        
        cell.eventName.text = all_events.getEventName()
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM-dd hh:mm"
        let date = dateFormatter.stringFromDate(all_events.getEventTime())
        cell.eventTime.text = date
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "eventDetail":
            if var secondViewController = segue.destinationViewController as? EventDisplayViewController {
                if var cell = sender as? EventDisplayViewController {
                    secondViewController.
                }
            }
        default:
            break
        }
        
    }

}
