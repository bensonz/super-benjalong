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
        dateFormatter.dateFormat = /*find out and place date format from http://userguide.icu-project.org/formatparse/datetime*/
        let date = dateFormatter.dateFromString(/*your_date_string*/)
        cell.eventTime.text = all_events.getEventTime()
        
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "tableToDisplay":
            if var secondViewController = segue.destinationViewController as? ReminderDisplayViewController {
                if var cell = sender as? ReminderCellTableViewCell {
                    secondViewController.titleString = cell.reminderTitle.text!
                    secondViewController.dateString = cell.reminderDate.text!
                }
            }
        default:
            break
        }
        
    }

}
