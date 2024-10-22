//
//  ViewController.swift
//  Dicee
//
//  Created by Джан Влад on 23.10.2024.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var Imageview1: NSImageView!
    
    @IBOutlet weak var ImageView2: NSImageView!
    
    var images = ["dice1", "dice2","dice3", "dice4", "dice5", "dice6"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func Button(_ sender: Any) {
        var FirstDie = Int.random(in:0...5)// Here we are picking random images from our array of images
        var SecondDie = Int.random(in:0...5)
        // Here we wrote while loop, in order to not get the same results in both dices
        while FirstDie == SecondDie{
            SecondDie = Int.random(in: 0...5)
        }
        Imageview1.image = NSImage(named:images[FirstDie])
        ImageView2.image = NSImage(named:images[SecondDie])
    }
    
}

