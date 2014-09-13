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
        
    }
    override func didReceiveMemoryWarning() {
        
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
            //self.navigationController?.popToRootViewControllerAnimated(true)
            var nnn : String
            if CONSTANTS().currentUser != nil{
                nnn = CONSTANTS().currentUser!.getName()
            }else{
                nnn = "BZ"
            }
            var newEvent = singleEvent(eventHosts: [nnn],
                eventTime: time!,
                eventLocation: in_location.text,
                eventType: type!)
            CONSTANTS().events.append(newEvent)
            break
        default:
            break
        }
    }
}