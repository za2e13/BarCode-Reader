//
//  ViewController.swift
//  Storing Images
//
//  Created by University on 15/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var bach: UIImageView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		
		/*
		let url = NSURL(string: "http://www.ziaahmed.co.uk/images/Random_images/zia.jpeg")
		
		let urlRequest = NSURLRequest(URL: url!)
		
		NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler: {
			
			response, data, error in
			
			if error != nil{
				
				println("There was an error")
				
			}else{
				
				let image = UIImage(data: data)
				
				//self.bach.image = image
				
				var documentDirectory: String?
				
				var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
				if paths.count > 0 {
					
					documentDirectory = paths[0] as? String
					
					var savePath = documentDirectory! + "/bach.jpg"
					
					NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
					
					self.bach.image = UIImage(named: savePath)
				}
				
			}
		
		})
		
		*/
		
		
		// acessing the image with internet connection
		var documentDirectory: String?
		
		var paths: [AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
		if paths.count > 0 {
			
			documentDirectory = paths[0] as? String
			
			var savePath = documentDirectory! + "/bach.jpg"
			
			//NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
			
			self.bach.image = UIImage(named: savePath)
		}
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

