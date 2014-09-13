//
//  CONSTANTS.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIkit

class CONSTANTS {
    //This class stores all the constants!
    var events : [singleEvent]
    var users : [user]
    
    init(){
        events = [
            singleEvent(eventHosts: ["BENSON"], eventTime: NSDate.date(), eventLocation: "OE", eventType: singleEvent.types.eat),
            singleEvent(eventHosts: ["LEO","JASON"], eventTime: NSDate.date(), eventLocation: "Gates", eventType: singleEvent.types.study)
        ];
        
        users = [];
    }
    
}