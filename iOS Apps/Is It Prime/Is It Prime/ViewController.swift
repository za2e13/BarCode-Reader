//
//  ViewController.swift
//  Is It Prime
//
//  Created by University on 05/06/2015.
//  Copyright (c) 2015 Zia_Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var typedNumber: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func is_It_Prime(sender: AnyObject) {
       
        var typeValue = typedNumber.text.toInt()
        
       
        
        
        if (typeValue != nil){
         var unwrappedNumber = typeValue!
            
            var isPrime = true
            if unwrappedNumber == 1{
                isPrime = false
            }
            if unwrappedNumber != 2 && unwrappedNumber != 1{
                for var i = 2; i < unwrappedNumber; i++ {
                
                    if unwrappedNumber % i == 0{
                    
                        isPrime = false
                    }
                }
            }
        
            if isPrime == true{
              result.text = "\(unwrappedNumber) is a Prime Number"
            }else{
               result.text = "\(unwrappedNumber) is NOT a Prime Number"
            }
            
            //result.text = "Is the number is Prime = \(isPrime)"
        }else{
           result.text = "Pleas enter a HOLE number !"
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




/*


var randomNumber = arc4random_uniform(6)
var gussInt = guss.text.toInt()

if (gussInt != nil){

if Int(randomNumber) == gussInt{

resultLabel.text = "Correct! that number is \(randomNumber)"
}else{
resultLabel.text = "Nope, the number was \(randomNumber)"
}

}else{
resultLabel.text = "Please enter a number between 0 - 5"
}
println(guss.text)
}



*/