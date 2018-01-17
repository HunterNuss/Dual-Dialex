//
//  TheIntrinsicHeadNod.swift
//  Dual Dialex
//
//  Created by Hunter Nuss on 1/14/18.
//  Copyright © 2018 Hunter Nuss. All rights reserved.
//

import UIKit
import AVFoundation

class TheIntrinsicHeadNod: UIViewController {
    
    @IBOutlet weak var theJam: UIImageView!
    @IBOutlet weak var still: UIImageView!
    @IBOutlet weak var didIWin: UIImageView!
    @IBOutlet weak var headspace: UIImageView!
    @IBOutlet weak var limelight: UIImageView!
    @IBOutlet weak var dontBelieveTheHype: UIImageView!
    @IBOutlet weak var checkMeOut: UIImageView!
    @IBOutlet weak var limitless: UIImageView!
    @IBOutlet weak var closeToYou: UIImageView!
    @IBOutlet weak var sketches: UIImageView!
    
    
    var music: AVAudioPlayer!
    var path = Bundle.main.path(forResource: "", ofType:nil)
    var activity = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound()
    {
        let url = URL(fileURLWithPath: path!)
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            music = sound
            sound.play()
        } catch {
            print("Error. Could not load the sound file")
        }
    }
    
    func stopSound()
    {
        let url = URL(fileURLWithPath: path!)
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            music = sound
            sound.stop()
        } catch {
            print("Error. Could not load the sound file")
        }
    }
    
    
    
    
    
    
    @IBAction func theJam(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "The Jam.mp3", ofType:nil)!
            playSound()
            theJam.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            theJam.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func still(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Still.mp3", ofType:nil)!
            playSound()
            still.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            still.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func didIWin(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Did I Win?.mp3", ofType:nil)!
            playSound()
            didIWin.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            didIWin.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func headspace(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Headspace.mp3", ofType:nil)!
            playSound()
            headspace.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            headspace.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func limelight(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Limelight (Feat. Lil Xay).mp3", ofType:nil)!
            playSound()
            limelight.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            limelight.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func dontBelieveTheHype(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Don't Believe the Hype.mp3", ofType:nil)!
            playSound()
            dontBelieveTheHype.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            dontBelieveTheHype.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func checkMeOut(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Check Me Out (Feat. Jack Feder).mp3", ofType:nil)!
            playSound()
            checkMeOut.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            checkMeOut.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func limitless(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Limitless.mp3", ofType:nil)!
            playSound()
            limitless.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            limitless.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func closeToYou(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Close to you (Feat. Jack Feder).mp3", ofType:nil)!
            playSound()
            closeToYou.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            closeToYou.image = #imageLiteral(resourceName: "Black")
        }
    }
    
    @IBAction func sketches(_ sender: UIButton) {
        if sender.isTouchInside == true {
            path = Bundle.main.path(forResource: "Sketches.mp3", ofType:nil)!
            playSound()
            sketches.image = #imageLiteral(resourceName: "Sound Wave 2")
        } else {
            stopSound()
            sketches.image = #imageLiteral(resourceName: "Black")
        }
    }
}
