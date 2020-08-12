//
//  ViewController.swift
//  SFX Generator
//
//  Created by Randall Hanson on 8/7/20.
//  Copyright © 2020 Randall Hanson. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


 
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundName: sender.currentTitle!)
        
        //in addition to receiving action, you can apparently push style back to sender!
        sender.alpha = 0.5
    
        //timer delay code for .2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1){
            //do this after the delay
            sender.alpha = 0.6
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                   //do this after the delay
                   sender.alpha = 0.7
               }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
                   //do this after the delay
                   sender.alpha = 0.8
               }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4){
                   //do this after the delay
                   sender.alpha = 0.9
               }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){
                   //do this after the delay
                   sender.alpha = 1.0
               }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "m4a")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
