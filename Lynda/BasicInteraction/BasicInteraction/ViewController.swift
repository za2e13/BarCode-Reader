//
//  ViewController.swift
//  BasicInteraction
//
//  Created by University on 10/07/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

	
	@IBOutlet weak var typedName: UITextField!
	@IBOutlet weak var result: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	@IBAction func findName(sender: AnyObject) {
		
		var userName = typedName.text
		
		if (userName != nil && userName != "zia"){
			
			result.text = "\(userName)" + " Added in the system !"
			self.typedName.resignFirstResponder()
			//typedName.text
			
		}else{
			
			result.text = "Plesae enter your name "
			
		}
	}
	
	func textFieldShouldReturn(textField: UITextField) -> Bool {
		self.view.endEditing(true)
		return false
	}
	
	override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
		
		self.view.endEditing(true)
		
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

