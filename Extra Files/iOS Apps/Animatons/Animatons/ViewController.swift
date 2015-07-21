//
//  ViewController.swift
//  Animatons
//
//  Created by University on 09/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var timer = NSTimer()
    var isAnimating = true
    
    @IBOutlet weak var text: UIButton!
    @IBOutlet weak var alienImage: UIImageView!
    @IBAction func updateImage(sender: AnyObject) {
        
        if isAnimating == true{
            
            timer.invalidate()
            isAnimating = false
            //text.setTitle("STOP Animation")
        }else{
            
             timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
    }
    
    func doAnimation(){
        if counter == 5{
            counter = 1
        }else{
            counter++
        }
        
        alienImage.image = UIImage(named: "Frame\(counter).png")
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  /*
    
    override func viewDidLayoutSubviews() {
        
        // this pices of code will feed image from the left of the screen
        //alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y)
        
        
        //alienImage.alpha = 0
        
        alienImage.frame = CGRectMake(100, 20, 0, 0)
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(1, animations: { () -> Void in
            
            //self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            
            //self.alienImage.alpha = 1
            
            self.alienImage.frame = CGRectMake(100, 20, 100, 200)
            
        })
        
    }
    
    
  */
    
    
    
    
    


}

