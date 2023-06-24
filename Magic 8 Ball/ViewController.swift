//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var magicBall: UIImageView!
    
    let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    var ballNumber = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.becomeFirstResponder() // To get shake gesture
        magicBall.isHidden = true
    }
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            print("Shook!!!")
            
            // Make sure ball is unhidden
            magicBall.isHidden = false
            print("Ball Number: \(ballNumber + 1)\n")
            magicBall.image = ballArray[ballNumber]
            
            // Find new random number for next ask
            ballNumber = Int.random(in:0...4)
        }
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        print("Asked!!!")
        
        // Make sure ball is unhidden
        magicBall.isHidden = false
        // magicBall.image = ballArray.randomElement()
        print("Ball Number: \(ballNumber + 1)\n")
        magicBall.image = ballArray[ballNumber]
        
        // Find new random number for next ask
        ballNumber = Int.random(in:0...4)
    }
    
    
}

