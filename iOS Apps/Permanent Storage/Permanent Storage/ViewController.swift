//
//  ViewController.swift
//  Permanent Storage
//
//  Created by University on 05/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        
       var name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        println(name)
        
        var arr = [1, 2, 3]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        var recalledArray =  NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array") as! NSArray
        
        println(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

