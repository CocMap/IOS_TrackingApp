//
//  SettingsTableViewCell.swift
//  TrackingApp
//
//  Created by CocMap on 2/10/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    
    //MARK: Properties
    
    @IBOutlet weak var activityName: UILabel!
    @IBOutlet weak var dailyLimit: UILabel!
    @IBOutlet weak var shotLimit: UILabel!
    @IBOutlet weak var noti: UISwitch!
    
    //MARK: Fundamental functions
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
