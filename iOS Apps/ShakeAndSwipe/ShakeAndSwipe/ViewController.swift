//
//  ViewController.swift
//  ShakeAndSwipe
//
//  Created by University on 13/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	var player: AVAudioPlayer = AVAudioPlayer()
	
	var sounds = ["ding_dong", "bean", "belch", "giggle", "pew", "pig", "snore", "static", "uuu"]

	override func viewDidLoad() {
		super.viewDidLoad()
		
		/*
		
		var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
		swipeRight.direction = UISwipeGestureRecognizerDirection.Right
		self.view.addGestureRecognizer(swipeRight)
		
		var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
		swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
		self.view.addGestureRecognizer(swipeLeft)
		
		var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
		swipeUp.direction = UISwipeGestureRecognizerDirection.Up
		self.view.addGestureRecognizer(swipeUp)
		
		var swipeDown = UISwipeGestureRecognizer(target: self, action: "swiped:")
		swipeDown.direction = UISwipeGestureRecognizerDirection.Down
		self.view.addGestureRecognizer(swipeDown)
		

		*/



	}
	
	override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
		
		if event.subtype == UIEventSubtype.MotionShake{
			
			//println("User shook thier device")
			
			var randNumber = Int(arc4random_uniform(UInt32(sounds.count)))
			
			var fileLocation = NSBundle.mainBundle().pathForResource(sounds[randNumber], ofType: "mp3")
			
			var error: NSError? = nil
			
			player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: fileLocation!), error: &error)
			player.play()
			
		}
		
		
	}
	
	
	/*
	
	func swiped (gesture: UIGestureRecognizer){
		
		if 	let swipeGesture = gesture as? UISwipeGestureRecognizer{
			
			switch swipeGesture.direction {
				
			case UISwipeGestureRecognizerDirection.Right:
				println("User swiped right")
				
			case UISwipeGestureRecognizerDirection.Left:
				println("User swiped Left")
				
			case UISwipeGestureRecognizerDirection.Up:
				println("User swiped Up")
	
			case UISwipeGestureRecognizerDirection.Down:
				println("User swiped Down")
				
			default:
				break
				
			}
			
		}
	}

	*/
	
	
	
	
	
	
	
	
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

