//
//  ViewController.swift
//  JSON Demo
//
//  Created by University on 15/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		let urlPath = "http://www.telize.com/geoip"
		
		let url = NSURL(string: urlPath)
		
		let session = NSURLSession.sharedSession()
		
		let task = session.dataTaskWithURL(url!, completionHandler: {data, response, error -> Void in
			
			if (error != nil) {
				println(error)
			}else{
				
				
			let jsonResult = 	NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
				
			println(jsonResult["country_code"])
			}
		})
		
		
		task.resume()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

