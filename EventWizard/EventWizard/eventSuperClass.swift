//
//  eventSuperClass.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import Foundation

public class eventSuperClass {
    private var event_name : String;
    private var event_hosts : [String];
    private var event_time : NSDate;
 
    init(eventName name : String, eventHosts host: [String], eventTime time:NSDate){
        self.event_name = name;
        self.event_hosts = host;
        self.event_time = time;
    }
    
    func getEventName() -> String{
        return event_name;
    }
    func getEventHost() -> [String]{
        return event_hosts;
    }
    func getEventTime() -> NSDate{
        return event_time;
    }
    
    func setEventName(name n:String)->Void{
        self.event_name = n;
    }
    //not allowed to change time or host
}