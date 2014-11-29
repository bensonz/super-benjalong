//
//  ItemManager.swift
//  EventWizard
//
//  Created by Bz on 11/28/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import Foundation

class ItemsManager {
    var items = [singleEvent]()
    
    //only runs code once, and never ran twice
    lazy private var archivePath: String = {
        let fileManager = NSFileManager.defaultManager()
        let documentDirectoryURLs = fileManager.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask) as [NSURL]
        let archiveURL = documentDirectoryURLs.first!.URLByAppendingPathComponent("eventItem", isDirectory: false)
        return archiveURL.path!
        }()
    
    func save() {
        NSKeyedArchiver.archiveRootObject(items, toFile: archivePath)
    }
    
    private func unarchiveSavedItems(){
        if NSFileManager.defaultManager().fileExistsAtPath(archivePath){
            let savedItems = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath) as [singleEvent]
            items = savedItems
        }
    }
    init() {
        unarchiveSavedItems()
    }
}
