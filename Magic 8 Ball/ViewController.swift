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
    
    let ballArray = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4")]
    
    var ballNumber = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        magicBall.isHidden = true
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        magicBall.isHidden = false
        
        // magicBall.image = ballArray.randomElement()
        
        magicBall.image = ballArray[ballNumber]
        
        ballNumber = Int.random(in:0...4)
        
    }
    
    
}

