//
//  ViewController.swift
//  Tic Tag Toe
//
//  Created by University on 09/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1 = noughts, 2 = crosses
    var activePlayer = 1
    
    var gameActive = true
    
    var gameStage = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    var winingCombination  = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var gameOverLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func playAgainPressed(sender: AnyObject) {
        
         activePlayer = 1
        
         gameActive = true
        
         gameStage = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        var button : UIButton
        
        for (var i = 0; i < 9; i++){
            button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, forState: .Normal)
        }
        
        gameOverLabel.hidden = true
        playAgainButton.hidden = true
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 400, gameOverLabel.center.y)
        playAgainButton.center = CGPointMake(playAgainButton.center.x - 400, playAgainButton.center.y)
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        if gameStage[sender.tag] == 0 && gameActive == true{
        
            var image = UIImage()
        
            gameStage[sender.tag] = activePlayer
        
            if activePlayer == 1{
                image = UIImage(named: "nought.png")!
                activePlayer = 2
            }else{
            
                image = UIImage(named: "cross.png")!
                activePlayer = 1
            
            }
        
        
            sender.setImage(image, forState: .Normal)
            
            for combination in winingCombination{
            
                if gameStage[combination[0]] != 0 && gameStage[combination[0]] == gameStage[combination[1]] && gameStage[combination[1]] == gameStage[combination[2]]{
                    
                    var labelText = "Nought has WON!"
                    
                    
                    if gameStage[combination[0]] == 2 {
                        
                        labelText = ("Crosses has WON!")
                    }
                    
                    gameOverLabel.text = labelText
                    
                    gameOverLabel.hidden = false
                    playAgainButton.hidden = false
                    
                    UIView.animateWithDuration(0.5, animations: { () -> Void in
                        
                        self.gameOverLabel.center = CGPointMake(self.gameOverLabel.center.x + 400, self.gameOverLabel.center.y)
                        self.playAgainButton.center = CGPointMake(self.playAgainButton.center.x + 400, self.playAgainButton.center.y)
                        
                    })
                    gameActive = false
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        gameOverLabel.hidden = true
        playAgainButton.hidden = true
        gameOverLabel.center = CGPointMake(gameOverLabel.center.x - 400, gameOverLabel.center.y)
        playAgainButton.center = CGPointMake(playAgainButton.center.x - 400, playAgainButton.center.y)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
    }
    
    


}

