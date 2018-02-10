//
//  activity.swift
//  TrackingApp
//
//  Created by CocMap on 2/10/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit

class Activity: NSObject {
    
    //MARK: Properties
    
    var name: String
    var dailyTimeConsumption: Date
    var dailyTimeLimit: Date
    var dailyPicker: Int
    var shotTimeConsumption: Date
    var shotTimeLimit: Date
    var type: String
    var commonTime: Date
    
    //Initialization
    init?(name: String, dailyTimeConsumption: Date, dailyTimeLimit: Date, dailyPicker: Int,
         shotTimeConsumption: Date, shotTimeLimit: Date, type: String, commonTime: Date) {
        
        //initialization should fail if there is no name
        if name.isEmpty {
            return nil
        }
        
        //initialization stored properties
        self.name = name
        self.dailyTimeConsumption = dailyTimeConsumption
        self.dailyTimeLimit = dailyTimeLimit
        self.dailyPicker = dailyPicker
        self.shotTimeConsumption = shotTimeConsumption
        self.shotTimeLimit = shotTimeLimit
        self.type = type
        self.commonTime = commonTime
    }

}
