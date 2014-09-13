//
//  EventTableViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventTableViewController : UITableViewController,UITableViewDataSource{
    //var events : [singleEvent]
    
    var events : [singleEvent] = [
    singleEvent(eventHosts: ["BENSON"], eventTime: NSDate.date(), eventLocation: "OE", eventType: singleEvent.types.eat),
    singleEvent(eventHosts: ["LEO","JASON"], eventTime: NSDate.date(), eventLocation: "Gates", eventType: singleEvent.types.study)
    ];
    
    override func viewDidLoad() {
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("event") as? EventCell ?? EventCell()
        var one_event = self.events[indexPath.row]
        
        cell.event = one_event
        //host @ location @ time
        var hlt :String = one_event.getEventType() + " @ " +
            one_event.getEventLocation() + " @ " + one_event.getEventTimeInStringFormat()
        cell.l_eHostsATlocationATtime.text = hlt
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "eventDetail":
            if var secondViewController = segue.destinationViewController as? EventDisplayViewController {
                if var cell = sender as? EventCell {
                    secondViewController.event = cell.event
                }
            }
        case "addNewEvent":
            break
        default:
            break
        }
        
    }

}
