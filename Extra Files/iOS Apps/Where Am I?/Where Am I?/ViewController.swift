//
//  ViewController.swift
//  Where Am I?
//
//  Created by University on 12/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
	
	var manager: CLLocationManager!
	
	@IBOutlet weak var latitudeLabel: UILabel!
	@IBOutlet weak var longtitudeLabel: UILabel!
	@IBOutlet weak var courseLabel: UILabel!
	@IBOutlet weak var speedLabel: UILabel!
	@IBOutlet weak var altitudeLabel: UILabel!
	@IBOutlet weak var addressLabel: UILabel!
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		manager = CLLocationManager()
		manager.delegate = self
		manager.desiredAccuracy - kCLLocationAccuracyBest
		manager.requestWhenInUseAuthorization()
		manager.startUpdatingLocation()

	}
	
	func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
		
		println(locations)
		
		var userLocation: CLLocation = locations[0] as! CLLocation
		
		self.latitudeLabel.text = "\(userLocation.coordinate.latitude)"
		
		self.longtitudeLabel.text = "\(userLocation.coordinate.longitude)"
		
		self.courseLabel.text =	"\(userLocation.course)"
		
		self.speedLabel.text = "\(userLocation.speed)"
		
		self.altitudeLabel.text = "\(userLocation.altitude)"
		
		CLGeocoder().reverseGeocodeLocation(userLocation, completionHandler: { (placemarks, error) -> Void in
			
			if(error != nil){
				println(error)
				
			}else{
				if let p = CLPlacemark(placemark: placemarks?[0] as! CLPlacemark){
					
					var subThoroughfare:String = ""
					
					if (p.subThoroughfare != nil){
						
						subThoroughfare = p.subThoroughfare
					}
					self.addressLabel.text = "\(subThoroughfare) \(p.thoroughfare) \n \(p.subLocality) \n \(p.subAdministrativeArea) \n \(p.postalCode) \n \(p.country)"
				}
			}
			
			
		})
		
		
		
		
		
		
		
		
		
		
		
	}
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

