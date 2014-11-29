//
//  NewEventViewController.swift
//  EventWizard
//
//  Created by Bz on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIkit

class NewEventDisplayViewController: UIViewController,UIPickerViewDelegate {

    var event : singleEvent? = nil
    
    @IBOutlet weak var typePicker: UIPickerView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component : Int) -> Int{
        return singleEvent.types.allValues.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return singleEvent.types.allValues[row].toRaw()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "createOwnEvent":
            if var secondViewController = segue.destinationViewController as? CreateOwnEventViewController {
                secondViewController.type = singleEvent.types.allValues[typePicker.selectedRowInComponent(0)]
                secondViewController.time = timePicker.date
            }
        default:
            break
        }

    }
}
