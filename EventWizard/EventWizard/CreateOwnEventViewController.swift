//
//  CreateOwnEventViewController.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class CreateOwnEventViewController :UIViewController {
    var event : singleEvent? = nil
    var type : singleEvent.types? = nil
    var time : NSDate? = nil
    var userName : String = ""
 
    @IBOutlet weak var in_location: UITextField!
    @IBOutlet weak var in_description: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) -> Void {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(tf : UITextField) -> Bool{
        self.view.endEditing(true)
        return true
    }
    
    @IBAction func user_done_editing(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "finalized":
            if var secondViewController = segue.destinationViewController as? EventTableViewController {
                var nnn : String = "BZ"
                // nnn should be curUser name.
                var newEvent = singleEvent(eventHosts: [nnn],
                    eventTime: time!,
                    eventLocation: in_location.text,
                    eventType: type!)
                secondViewController.RSManager.items.append(newEvent)
            }
            break
        default:
            break
        }
    }
}