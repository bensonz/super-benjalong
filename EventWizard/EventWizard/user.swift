//
//  user.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIkit

class user{
    var him : person = person.init()
    
    init(name n:String, profilePic pp:UIImage, friends f : [person]){
        him.name = n
        him.profilePic = pp
        him.friends = f
    }
    init(Person p : person){
        him = p
    }
    
    func getName() -> String {
        return him.name
    }
    
    func getFriends()->[person]{
        return him.friends
    }
    
}
