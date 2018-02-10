//
//  SettingsVC.swift
//  TrackingApp
//
//  Created by CocMap on 2/10/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: Properties
    let activities = ["Phone", "Tablet", "Intel", "Tennis", "Driving", "Sleeping", "Sitting"]
    let dailyLimit = ["10H", "10H", "10H", "10H", "10H", "10H", "10H"]
    let shotLimit = ["2H", "3H", "1H", "2H", "4H", "1H", "2H"]
    let noti = [true, false, false, true, true, true]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let settingsCell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath) as! SettingsCell
        
        settingsCell.activityName.text = activities[indexPath.row]
        settingsCell.dailyLimit.text = dailyLimit[indexPath.row]
        settingsCell.shotLimit.text = shotLimit[indexPath.row]
        //settingsCell.noti.isOn = noti[indexPath.row]
        
        return settingsCell
    }
    

    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
