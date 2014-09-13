//
//  CONSTANTS.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIkit

struct person {
    var name : String
    var profilePic : UIImage?
    var friends : [person]
    
    init() {
        name = ""
        profilePic = UIImage(named: "default.png")
        friends = []
    }
    
    init(n: String, pp : UIImage, fs : [person]){
        name = n
        profilePic = pp
        friends = fs
    }
    
}

class CONSTANTS {
    //This class stores all the constants!
    var events : [singleEvent] = []
    var users : [user] = []
    var currentUser : user? = nil
    
    init(){
        events = [
            singleEvent(eventHosts: ["BENSON"], eventTime: NSDate.date(), eventLocation: "OE", eventType: singleEvent.types.eat),
            singleEvent(eventHosts: ["LEO","JASON"], eventTime: NSDate.date(), eventLocation: "Gates", eventType: singleEvent.types.study)
        ];
        
        users = [
           
        ];
    }
    
}