//
//  ViewController.swift
//  Core Data Demo
//
//  Created by University on 13/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.

		var appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
		
		var context: NSManagedObjectContext = appDel.managedObjectContext!
		
		//var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
		
		//newUser.setValue("Tom", forKey: "username")
		//newUser.setValue("pass4", forKey: "password")
		
		//context.save(nil)
		

		
		
		var request = NSFetchRequest(entityName: "Users")
		
		request.returnsObjectsAsFaults = false
		request.predicate = NSPredicate(format: "username = %@", "Zia")
		
		var result = context.executeFetchRequest(request, error: nil)
	
		if (result?.count > 0){
		
			println(result)
			for result: AnyObject in result! {
				
				println(request)
				
				if let user = result.valueForKey("username") as? String{
					if (user == "Zia"){
						//context.deleteObject(result as! NSManagedObject)
						
						//println(user + " has been deleted!")
						
						result.setValue("pass6", forKey: "password")
						
						
					}
				}
				
				context.save(nil)
			}
		}else{
			
			println("No result found! ")
		}
		
	}
	
	

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

