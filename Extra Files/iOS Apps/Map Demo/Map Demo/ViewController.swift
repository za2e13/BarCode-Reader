//
//  ViewController.swift
//  Map Demo
//
//  Created by University on 11/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

	
	@IBOutlet weak var map: MKMapView!
	
	var locationManager = CLLocationManager()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		locationManager.delegate = self
		locationManager.desiredAccuracy = kCLLocationAccuracyBest
		locationManager.requestWhenInUseAuthorization()
		locationManager.startUpdatingLocation()
		
		
		
		
		
		// 43.095181, -79.006424
		var latitude:CLLocationDegrees = 50.900190
		
		var latitute:CLLocationDegrees = -1.396292
		
		var latDelta:CLLocationDegrees = 0.01
		
		var lonDelta: CLLocationDegrees = 0.01
		
		var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
		
		var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, latitute)
		
		var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
		
		map.setRegion(region, animated: false)
		
		
		
		var annotation = MKPointAnnotation()
		
		annotation.coordinate = location
		
		annotation.title = "Southampton"
		
		annotation.subtitle = "That my university home..."
		
		map.addAnnotation(annotation)
		
		
		
		var uilpgr = UILongPressGestureRecognizer(target: self, action: "acttion:")
		
		uilpgr.minimumPressDuration = 2
		
		map.addGestureRecognizer(uilpgr)
		
	}
	
	func action(gestureReconizer:UIGestureRecognizer){
		
		println("Gesture Reconized")
		
		var touchPoint = gestureReconizer.locationInView(self.map)
		var newCoordinate: CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map)
		
		var annotation = MKPointAnnotation()
		annotation.coordinate = newCoordinate
		annotation.title = "New Location"
		annotation.subtitle = "One day i will visit here..."
		map.addAnnotation(annotation)
		
	}
	
	
	func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
		
		println(locations)
		
		var userLocation: CLLocation = locations[0] as! CLLocation
		
		var latitute = userLocation.coordinate.latitude
		
		var longitude = userLocation.coordinate.longitude
		
		var latDelta:CLLocationDegrees = 0.01
		
		var lonDelta: CLLocationDegrees = 0.01
		
		var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
		
		var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitute, longitude)
		
		var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
		
		self.map.setRegion(region, animated: false)
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

