//
//  ViewController.swift
//  Xylophone
//
//  Created by Джан Влад on 23.10.2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController , AVAudioPlayerDelegate{
    
    var audio : AVAudioPlayer!
    var soundArray = ["A", "B", "C", "D", "E", "F", "G"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonPress(_ sender: UIButton) {
        let selectedSound = soundArray[(sender.tag) - 1]
        playSound(chooosedSound: selectedSound)
        
    }
    
    func playSound(chooosedSound: String){
        let soundUrl = Bundle.main.url(forResource: chooosedSound, withExtension: ".wav")
        
        do{
            try audio = AVAudioPlayer(contentsOf: soundUrl!)
            audio.prepareToPlay()
            audio.play()
        }
        catch {
            print (error)
        }
    }
    
}
