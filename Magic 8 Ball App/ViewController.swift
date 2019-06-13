//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by Stone Kletecka on 6/12/19.
//  Copyright © 2019 Stone Kletecka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex = 0
    
    @IBOutlet weak var magic8BallImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBallImage()
        
    }

    @IBAction func fortuneButtonPressed(_ sender: UIButton) {
    
        updateBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
        
    }
    
    func updateBallImage() {
        randomBallIndex = Int.random(in: 0 ... 4)
        
        magic8BallImage.image = UIImage(named: ballArray[randomBallIndex])
        
    }

}

