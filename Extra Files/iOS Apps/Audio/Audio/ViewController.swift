//
//  ViewController.swift
//  Audio
//
//  Created by University on 13/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
	
	var player: AVAudioPlayer = AVAudioPlayer()

	@IBAction func play(sender: AnyObject) {
		
		var audioPath = NSBundle.mainBundle().pathForResource("001_Fatiha", ofType: "mp3")!
		
		var error : NSError? = nil
		
		player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
		
		if error == nil{
			player.play()
		}else{
			println(error)
		}
		
	}
	
	@IBAction func pause(sender: AnyObject) {
		
		player.pause()
		
	}
	
	@IBAction func sliderChange(sender: AnyObject) {
		
		player.volume = sliderValue.value
		
	}
	
	
	@IBOutlet weak var sliderValue: UISlider!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

