//
//  ViewController.swift
//  Dice app
//
//  Created by Maksym Kolodiy on 05/09/2019.
//  Copyright © 2019 Maksym Kolodiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages();
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages();
        
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1;
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1;
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages();
    }
    
}

