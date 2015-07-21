//
//  ViewController.swift
//  First App
//
//  Created by University on 29/05/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLable: UILabel!
    
    
    @IBAction func testHere(sender: AnyObject) {
        myLable.text = "It Worked!"
        //println("Hello world!")
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

