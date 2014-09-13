//
//  finalizeEvent.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class finalizeEvent: UIViewController {

    @IBOutlet var doneButton : UIBarButtonItem?
    @IBOutlet var in_location: UITextField?
    @IBOutlet weak var in_Description: UITextField!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func unwindToList2 (segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Add a to-do item if they clicked "done"
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        
    }
    
}