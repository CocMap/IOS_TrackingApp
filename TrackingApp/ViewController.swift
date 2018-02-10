//
//  ViewController.swift
//  TrackingApp
//
//  Created by CocMap on 1/27/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var activeLabel: UILabel!
    @IBOutlet weak var workingLabel: UILabel!
    @IBOutlet weak var relaxingLabel: UILabel!
    
    
    @IBOutlet var collectionView: UICollectionView!
    
    let activities = ["Phone", "Tablet", "Intel", "Tennis", "Driving", "Sleeping", "Sitting"]
    
    let totalTime = ["1H 16M", "2H 10M", "8H", "2H 10M", "32M", "8H 30M", "35M"]

    override func viewDidLoad() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //set vertical scroll view
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        
        customProgressLabel()
        
        super.viewDidLoad()
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return activities.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "progressBarCell", for: indexPath) as! ProgressBarCollectionViewCell
        
        cell.labelCell.text = activities[indexPath.row].capitalized
        cell.backgroundColor =  UIColor.green.withAlphaComponent(0.2)
        
        cell.totalTimeCell.text = totalTime[indexPath.row]
        
        return cell
    }
    
    func customProgressLabel() {
        activeLabel.layer.masksToBounds = true
        activeLabel.layer.cornerRadius = 10
        
        workingLabel.layer.masksToBounds = true
        workingLabel.layer.cornerRadius = 10
        
        relaxingLabel.layer.masksToBounds = true
        relaxingLabel.layer.cornerRadius = 10
    }


}

