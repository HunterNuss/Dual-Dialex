//
//  LiveCell.swift
//  Dual Dialex
//
//  Created by  on 1/17/18.
//  Copyright © 2018 Hunter Nuss. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class LiveCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var playerVC = AVPlayerViewController()
    lazy var playButton: UIButton = {
        let button = UIButton(type: UIButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = UIColor.white
        button.setImage(#imageLiteral(resourceName: "Audio Wave"), for: .normal)
        button.addTarget(self, action: #selector(playVideo), for: .touchUpInside)
        return button
    }()
    
    func playButtonTap() {
        imageView.addSubview(playButton)
        playButton.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        playButton.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        playButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        playButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
    
    @objc func playVideo() {
        if let path = Bundle.main.path(forResource: "", ofType: nil) {
            let url = URL(fileURLWithPath: path)
            let avPlayer = AVPlayer(playerItem: AVPlayerItem(url: url))
            let avPlayerLayer = AVPlayerLayer(player: avPlayer)
            avPlayerLayer.frame = imageView.bounds
            imageView.layer.insertSublayer(avPlayerLayer, at: 0)
            avPlayer.play()
        } else {
            print("No")
        }
        
    }

    
            
            
                
//                // add target to imageview to detect double tap to display playervc
//                // add double tap gesture to thoughtImageview on cell, so that we can detect if video is double tapped.
//                let doubleTap = UITapGestureRecognizer(target: self, action: #selector(displayVideoVC))
//                doubleTap.delegate = self
//                doubleTap.numberOfTapsRequired = 2
//                thoughtImageView.addGestureRecognizer(doubleTap)
//
//            } else {
//                playButton.isHidden = true
//            }
//
//            // set date
//            let date = Date(timeIntervalSince1970: (thought?.created)!)
//

}

