//
//  ViewController.swift
//  Sounds
//
//  Created by Rohit Ramaswamy on 14/11/16.
//  Copyright © 2016 Rohit Ramaswamy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var AudioPlayerrn = AVAudioPlayer();
    var AudioPlayerb = AVAudioPlayer();
    var AudioPathBruh = URL(fileURLWithPath:Bundle.main.path(forResource: "bruh",ofType:"mp3")!)
    var AudioPathReallyNigga = URL(fileURLWithPath:Bundle.main.path(forResource: "really_nigga", ofType: "mp3")! )
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }*/
    
    
    
    @IBAction func onBruhButtonClicked(_ sender: UIButton) {
        print("Bruh touched")
        do{
        AudioPlayerb = try AVAudioPlayer(contentsOf: AudioPathBruh)
        }
        catch{
            print("Audio not found")
        }
        AudioPlayerb.play()
    }

    @IBAction func onReallyNiggaClicked(_ sender: UIButton) {
        print("Really nigga touched")
        do{
            AudioPlayerrn = try AVAudioPlayer(contentsOf: AudioPathReallyNigga)
        }
        catch{
            print("Audio not found")
        }
        AudioPlayerrn.play()
    }
}

