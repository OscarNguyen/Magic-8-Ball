//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Minh on 12/10/18.
//  Copyright © 2018 Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        /*randomBallNumber = Int.random(in: 0...4)
        
        imageView.image = UIImage(named: ballArray[randomBallNumber])*/
        
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0...4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

