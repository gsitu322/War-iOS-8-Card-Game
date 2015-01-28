//
//  ViewController.swift
//  War
//
//  Created by Gordon Situ on 1/26/15.
//  Copyright (c) 2015 Gordon Situ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    var cardNamesArray:[String] = ["card1", "card2","card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack","queen", "king"]
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playRoundTapped(sender: UIButton) {
    	
        var firstRandomNumber = Int(arc4random_uniform(13))
        var firstCardString = cardNamesArray[firstRandomNumber]
        
        var secondRandomNumber = Int(arc4random_uniform(13))
        var secondCardString = cardNamesArray[secondRandomNumber]
        
        self.firstCardImageView.image = UIImage(named: firstCardString)
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        if(firstRandomNumber > secondRandomNumber){
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }else if(firstRandomNumber == secondRandomNumber){
            
        }else{
            self.enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
        
    }
    
}

