//
//  EventDisplayViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//
import UIKit

class EventDisplayViewController: UIViewController {
    var eventHost : String = "";
    var eventName : String = "";
    var eventTime : NSDate? = nil;
    
    @IBOutlet weak var hosts: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func eventNameUpdate(sender: AnyObject) {
    }
    
}

