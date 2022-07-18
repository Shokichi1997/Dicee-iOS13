//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var diceImage1: UIImageView!
	@IBOutlet weak var diceImage2: UIImageView!

	var dices = [ #imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
	
	override func viewDidLoad() {
        super.viewDidLoad()
		
		diceImage1.image = #imageLiteral(resourceName: "DiceOne")
		diceImage1.alpha = 1
		
		diceImage2.image = #imageLiteral(resourceName: "DiceSix")     
		diceImage2.alpha = 1
    }
	
	@IBAction func rollButtonPressed(_ sender: UIButton) {
		
		
		// Int.random(in: 0...5)
		// Int.random(in: 0..<5)
		diceImage1.image = dices.randomElement()
		
		diceImage2.image = dices.randomElement()
		
	}
}

