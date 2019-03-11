//
//  ViewController.swift
//  Dicee
//
//  Created by Sarah Lee on 21/1/19.
//  Copyright © 2019 Sarah Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let dies = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        print(randomDiceIndex1)
        diceImageView1.image = UIImage(named:dies[randomDiceIndex1])
        diceImageView2.image = UIImage(named:dies[randomDiceIndex2])
        
    }
    
}

