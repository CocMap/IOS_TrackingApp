//
//  ViewController.swift
//  TrackingApp
//
//  Created by CocMap on 1/27/18.
//  Copyright © 2018 CocMap. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    let mainMenu = ["phone/tablet", "tivi", "computer screen", "sport/exercise", "driving",
                    "sleeping", "sitting", "tivi", "computer screen", "sport/exercise", "driving",
                    "tivi", "computer screen", "sport/exercise", "driving"]
    
    let totalTime = ["1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M",
                     "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M", "1H 16M"]

    override func viewDidLoad() {
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //set vertical scroll view
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .vertical
        }
        
        super.viewDidLoad()
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mainMenu.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "progressBarCell", for: indexPath) as! ProgressBarCollectionViewCell
        
        cell.labelCell.text = mainMenu[indexPath.row].capitalized
        cell.backgroundColor =  UIColor.green.withAlphaComponent(0.2)
        
        cell.totalTimeCell.text = totalTime[indexPath.row]
        
        return cell
    }


}

