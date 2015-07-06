//
//  ViewController.swift
//  webView Demo
//
//  Created by University on 15/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var webView: UIWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		/*
		var url = NSURL(string: "http://www.ziaahmed.co.uk")
		var request = NSURLRequest(URL:url!)
		
		webView.loadRequest(request)

		*/
		
		
		var html = "<html><head></head><body><h1>Hello, world</h1></body></html>"
		
		webView.loadHTMLString(html, baseURL: nil)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

