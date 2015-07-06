//
//  SecondViewController.swift
//  To Do List
//
//  Created by University on 08/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var item: UITextField!
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func addItem(sender: AnyObject) {
        
        
        toDoList.append(item.text)
        
        item.text = ""
        
        // This line of the code will the items to the NSUsers
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
    
        item.resignFirstResponder()
        return true
    }


}

