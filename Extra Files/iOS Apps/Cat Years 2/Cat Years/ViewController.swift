//
//  ViewController.swift
//  Cat Years
//
//  Created by University on 02/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        var enteredAge = age.text.toInt()
        var catYear = enteredAge! * 7
        
        resultLabel.text = "your cat age is \(catYear)"
        
        //println(catYear)
        
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

