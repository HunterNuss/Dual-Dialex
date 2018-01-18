//
//  AlbumsCell.swift
//  Dual Dialex
//
//  Created by Hunter Nuss on 1/16/18.
//  Copyright © 2018 Hunter Nuss. All rights reserved.
//

import UIKit

class AlbumsCell: UICollectionViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumLabel: UILabel!
    
    
    func display(image: UIImage, title: String)
    {
        albumImage.image = image
        albumLabel.text = title
    }
    
   
    
    
    
}
