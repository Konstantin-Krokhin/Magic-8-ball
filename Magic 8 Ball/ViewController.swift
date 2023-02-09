//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var gifImageView: UIImageView!
    let ballArray = [UIImage(imageLiteralResourceName: "ball1"), UIImage(imageLiteralResourceName: "ball2"), UIImage(imageLiteralResourceName: "ball3"), UIImage(imageLiteralResourceName: "ball4"), UIImage(imageLiteralResourceName: "ball5")];

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "cosmos.jpeg")!)
        let imageGif = UIImage.gifImageWithName("nah-8ball")
        gifImageView.image = imageGif
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        imageView.image = ballArray[Int.random(in: 0...4)]
    }
//
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            imageView.image = ballArray[Int.random(in: 0...4)]
        }
    }
    
}

