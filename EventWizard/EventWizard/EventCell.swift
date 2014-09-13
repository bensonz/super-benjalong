//
//  EventCell.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventCell : UITableViewCell{
    
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventTime: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
