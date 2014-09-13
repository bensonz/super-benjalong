//
//  singleEvent.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import Foundation

public class singleEvent {
    
    enum types : String {
        case eat = "Eat", study = "Study", drink = "Drink"
        
        static let allValues = [eat, study, drink]
    }
    
    //not allowed to change time or location
    private var event_hosts : [String];
    private let event_time : NSDate;
    private let event_location : String;
    private let event_type : types;
    private let dateFormatter = NSDateFormatter()
 
    init(eventHosts host: [String], eventTime time:NSDate,eventLocation loc : String, eventType type: types){
        self.event_location = loc;
        self.event_hosts = host;
        self.event_time = time;
        self.event_type = type;
        dateFormatter.dateFormat = "EEE hh:mm"
    }
    
    func getEventLocation() -> String{
        return event_location;
    }
    
    func getEventHosts() -> [String]{
        return event_hosts;
    }
    func getEventTime() -> NSDate{
        return event_time;
    }
    func getEventType() -> String{
        return event_type.toRaw()
    }
    
    func getEventTimeInStringFormat() -> String{
        //input event date as string because we do not allow changes to time
        return dateFormatter.stringFromDate(event_time)
    }
    
    func addEventHost(newhost h:String) -> Void{
        event_hosts.append(h);
    }
    
    func deleteEventHost(oldHost h:String) -> Void{
        for var i = 0 ;i < event_hosts.count; ++i {
            if (event_hosts[i] == h){
                event_hosts.removeAtIndex(i);
                break;
            }
        }
    }
    func getEventHostsInStringFormat() -> String {
        var str = "";
        for var i = 0; i < event_hosts.count-1; ++i{
            str += event_hosts[i] + ", ";
        }
        str += event_hosts[event_hosts.count-1]
        return str;
    }
    func toString()->String{
        var str = ""
        str += getEventHostsInStringFormat()
        str += event_location
        str += getEventTimeInStringFormat()
        str += event_type.toRaw()
        return str
    }
    
}