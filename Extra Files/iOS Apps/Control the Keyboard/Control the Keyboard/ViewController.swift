//
//  ViewController.swift
//  Control the Keyboard
//
//  Created by University on 05/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var typedValue: UITextField!
    
   // var unwrappedValue = typedValue.text.toInt()
    @IBAction func buttonPressed(sender: AnyObject) {
        
        
        
        result.text = typedValue.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.typedValue.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
}

