//
//  ActivityType.swift
//  TrackingApp
//
//  Created by CocMap on 2/10/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit

class ActivityType: NSObject {
    
    //MARK: Properties
    
    var name: String
    var totalTimeConsumption: Date
    var timeLimit: Date
    
    //MARK: Initialization
    
    init?(name: String, totalTimeConsumption: Date, timeLimit: Date) {
        
        //initialization should fail if there is no name
        if name.isEmpty {
            return nil
        }
        
        //initialization stored properties
        self.name = name
        self.totalTimeConsumption = totalTimeConsumption
        self.timeLimit = timeLimit
    }
    
}
