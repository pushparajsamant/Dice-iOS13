//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber =  0;
    var rightDiceNumber = 0;
    var imageList = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    @IBAction func clickRollButton(_ sender: UIButton) {
        leftDiceNumber = Int.random(in: 0...imageList.count - 1);
        rightDiceNumber = Int.random(in: 0...imageList.count - 1);
//        diceImageView1.image = imageList[leftDiceNumber]
//        diceImageView2.image = imageList[rightDiceNumber]
        diceImageView1.image = imageList.randomElement()
        diceImageView2.image = imageList.randomElement()
    }
}

