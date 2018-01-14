//
//  ViewController.swift
//  Dual Dialex
//
//  Created by Hunter Nuss on 1/13/18.
//  Copyright © 2018 Hunter Nuss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.black
        
    }

    
    
    @IBAction func websiteButton(_ sender: UIButton) {
        if let url = URL(string: "https://soundcloud.com/dualdialex") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
}

