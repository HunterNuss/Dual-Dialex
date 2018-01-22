//
//  LivePerformances.swift
//  Dual Dialex
//
//  Created by  on 1/17/18.
//  Copyright © 2018 Hunter Nuss. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class LivePerformances: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let screenSize = UIScreen.main.bounds
    let reuseIdentifier = "cell"
    var performances = [Performance]()
   
    
    override func viewDidLoad() {
        let performance1 = Performance(title: "Sino Show & Lil Xay", image: #imageLiteral(resourceName: "Rap Battle"))
        performances.append(performance1)
        
        collectionView.backgroundColor = UIColor.clear
    }
   
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (screenSize.width - 3.0) / 2.0
        return CGSize(width: width, height: width + 62)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return performances.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! LiveCell
        
        let currentPerformance = performances[indexPath.row]
        cell.imageView.tag = indexPath.row
        cell.label.text = currentPerformance.title
        cell.imageView.image = currentPerformance.image
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            
            let cell = collectionView.cellForItem(at: indexPath) as! LiveCell
            
            let performance = performances[indexPath.row]
            LiveCell.playVideo(performance.image)
        }
    }

    
}
