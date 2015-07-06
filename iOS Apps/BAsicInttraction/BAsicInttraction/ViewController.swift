//
//  ViewController.swift
//  BAsicInttraction
//
//  Created by University on 24/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	
	@IBOutlet weak var userName: UITextField!
	@IBOutlet weak var result: UILabel!

	@IBAction func whatIsMyName(sender: AnyObject) {
		
		var myName = userName.text
		if userName.text != myName{
			//result.text = "My name is " + userName.text! + " ! What is your name?"
			
			println(myName)
			
		}else{
			
			result.text = "Plesae type your name first"
		}
	
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

