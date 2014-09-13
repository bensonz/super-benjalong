//
//  EventCell.swift
//  EventWizard
//
//  Created by Bz on 9/12/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import UIKit

class EventCell : UITableViewCell{
    
    @IBOutlet weak var l_eHostsATlocationATtime: UILabel!
    
    var event : singleEvent? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
