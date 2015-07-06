//
//  ViewController.swift
//  How Many Fingers
//
//  Created by University on 02/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var guss: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func gussedButton(sender: AnyObject) {
       
        var randomNumber = arc4random_uniform(6)
        var gussInt = guss.text.toInt()
        
        if (gussInt != nil){
            
            if Int(randomNumber) == gussInt{
                
               resultLabel.text = "Correct! that number is \(randomNumber)"
            }else{
                resultLabel.text = "Nope, the number was \(randomNumber)"
            }
            
        }else{
            resultLabel.text = "Please enter a number between 0 - 5"
        }
        println(guss.text)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

