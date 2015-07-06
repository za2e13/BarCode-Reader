//
//  ViewController.swift
//  Back to Back
//
//  Created by University on 13/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

	var player:AVAudioPlayer = AVAudioPlayer()
	
	
	@IBAction func play(sender: AnyObject) {
		
		player.play()
		
	}
	
	@IBAction func sliderChange(sender: AnyObject) {
		
		player.volume = sliderValue.value
		
	}
	
	@IBAction func pause(sender: AnyObject) {
		
		player.pause()
        
	}
	
	
	@IBAction func stop(sender: AnyObject) {
		
		player.stop()
		player.currentTime = 0;
		
	}
	
	@IBOutlet var sliderValue: UISlider!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		var audioPath = NSBundle.mainBundle().pathForResource("Oh_Girl_Youre_Mine", ofType: "mp3")
		var error : NSError? = nil
		
		player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath!), error: &error)
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

