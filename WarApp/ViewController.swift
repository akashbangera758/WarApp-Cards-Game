//
//  ViewController.swift
//  WarApp
//
//  Created by Akash Bangera on 22/05/18.
//  Copyright © 2018 Akash Bangera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var playerScoreCount = 0
    var cpuScoreCount = 0
    
    @IBAction func dealTapped(_ sender: Any) {
        let leftCardRandom = arc4random_uniform(13) + 2
        let rightCardRandom = arc4random_uniform(13) + 2
        
        leftCard.image = UIImage(named: "card\(leftCardRandom)")
        rightCard.image = UIImage(named: "card\(rightCardRandom)")
        
        if leftCardRandom > rightCardRandom {
            playerScoreCount += 1
            playerScore.text = String(playerScoreCount)
        }
        else if rightCardRandom > leftCardRandom {
            cpuScoreCount += 1
            cpuScore.text = String(cpuScoreCount)
        }
        else if leftCardRandom == rightCardRandom {
            
        }
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        leftCard.image = UIImage(named: "back")
        rightCard.image = UIImage(named: "back")
        playerScoreCount = 0
        cpuScoreCount = 0
        playerScore.text = "0"
        cpuScore.text = "0"
    }
}

