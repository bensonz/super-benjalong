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