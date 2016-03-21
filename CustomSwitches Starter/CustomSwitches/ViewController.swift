//
//  ViewController.swift
//  CustomSwitches
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySwitch = UISwitch(frame: CGRect(x: 150, y: 200, width: 0, height: 0))
        view.addSubview(mySwitch)
        
        
        mySwitch.addTarget(self, action: "mySwitchChanged:", forControlEvents: .ValueChanged)
        changeColorOfMySwitch()
        
        turnSwitchOn ()
        
    }
    func turnSwitchOn(){
        mySwitch.setOn(true, animated: true)
        if mySwitch.on {
            print("The switch is on")
        }else{
            print("The switch is off")
        }
    }
    
    @IBAction func mySwitchChanged(sender: UISwitch){
        print("sender is \(sender)")
        if mySwitch.on{
            print("My switch is on")
        }else{
            print("My switch is off")
        }
    }
    
    func changeColorOfMySwitch(){
        mySwitch.tintColor  = UIColor.blackColor()
        mySwitch.onTintColor = UIColor.blueColor()
        mySwitch.thumbTintColor = UIColor.redColor()
    }
    
}












