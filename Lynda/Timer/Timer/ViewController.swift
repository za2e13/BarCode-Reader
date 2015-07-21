//
//  ViewController.swift
//  Timer
//
//  Created by University on 10/07/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var timeLabel: UILabel!
	@IBAction func refereshTime(sender: AnyObject) {
		
		let now = NSDate()
		
		var formatter = NSDateFormatter()
		formatter.dateFormat = "hh:mm:ss a"
		
		timeLabel.text = formatter.stringFromDate(now)
		
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

