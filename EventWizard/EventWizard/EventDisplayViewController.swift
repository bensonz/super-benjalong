//
//  EventDisplayViewController.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//
import UIKit

class EventDisplayViewController: UIViewController {
    var event : singleEvent? = nil
    let err : String = "NO EVENT"
    
    @IBOutlet weak var eventHosts: UILabel!
    @IBOutlet weak var eventLocation: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    @IBOutlet weak var eventType: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (event == nil){
            eventHosts.text = err
            eventLocation.text = err
            eventTime.text = err
            eventType.text = err
        }else{
            eventHosts.text = event?.getEventHostsInStringFormat()
            eventLocation.text = event?.getEventLocation()
            eventTime.text = event?.getEventTimeInStringFormat()
            eventType.text = event?.getEventType()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

