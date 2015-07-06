//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
	
	var signupActive = true

	@IBOutlet weak var username: UITextField!
	@IBOutlet weak var password: UITextField!
	
	@IBOutlet weak var signupButton: UIButton!
	@IBOutlet weak var registiredText: UILabel!
	@IBOutlet weak var loginButton: UIButton!
	
	var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
	
	func displayAlert (title: String, message: String){
		
		var alert = UIAlertController(title: title, message: message , preferredStyle: UIAlertControllerStyle.Alert)
		alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
			
			self.dismissViewControllerAnimated(true, completion: nil)
			
		}))
		
		self.presentViewController(alert, animated: true, completion: nil)
		
	}
	
	@IBAction func signup(sender: AnyObject) {
		
		if username.text == "" || password.text == "" {
			
			displayAlert("Error in form", message: "Please enter a username & password")
			
			
		}else{
			
			activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0, 0, 50, 50))
			activityIndicator.center = self.view.center
			activityIndicator.hidesWhenStopped = true
			activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
			view.addSubview(activityIndicator)
			activityIndicator.startAnimating()
			UIApplication.sharedApplication().beginIgnoringInteractionEvents()
			
			var errorMessage = "Plesae try again later"
			
			if signupActive == true{
			
			
				var user = PFUser()
				user.username = username.text
				user.password = password.text
			
				user.signUpInBackgroundWithBlock({ (sucess, error) -> Void in
				
				self.activityIndicator.stopAnimating()
				UIApplication.sharedApplication().endIgnoringInteractionEvents()
				
					if error == nil {
					
						// signup sucessful
					}else{
					
						if let errorString = error!.userInfo?["error"] as? String{
						
							errorMessage = errorString
						
						}
					
						self.displayAlert("Failed signup", message: errorMessage)
					}
				
				})
			}else{
				
				
				PFUser.logInWithUsernameInBackground(username.text, password: password.text, block: { (user, error) -> Void in
					
					self.activityIndicator.stopAnimating()
					UIApplication.sharedApplication().endIgnoringInteractionEvents()
					
					if user != nil {
						
						// Login in
					}else{
						
						if let errorString = error!.userInfo?["error"] as? String{
							
							errorMessage = errorString
							
						}
						
						self.displayAlert("Failed signup", message: errorMessage)
						
						
					}
					
					
				})
				
			}
			
			
		}
		
	}
	
	@IBAction func login(sender: AnyObject) {
		
		if signupActive == true {
			
			signupButton.setTitle("Log in", forState: UIControlState.Normal)
			registiredText.text = "No registired?"
			loginButton.setTitle("Sign up", forState: UIControlState.Normal)
			
			signupActive = false
			
		}else{
			
			signupButton.setTitle("Sign up", forState: UIControlState.Normal)
			registiredText.text = "Alredy registired?"
			loginButton.setTitle("Log in", forState: UIControlState.Normal)
			
			signupActive = true
		}
		
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

