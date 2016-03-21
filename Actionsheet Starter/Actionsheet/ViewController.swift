//
//  ViewController.swift
//  Actionsheet
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alertController :UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    alertController = UIAlertController(title: "Send me via?", message: "You can send me via Email or IMessage!", preferredStyle: .ActionSheet)
        
        
        let alertAction = UIAlertAction(title: "Email", style: .Default) { (action) -> Void in
            print("Send by email")
            
        }
        let alertAction1 = UIAlertAction(title: "iMessage", style: .Default) { (action) -> Void in
            print("Send by IMessage")
        
        }
        let alertAction2 = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
            print("Cancel pressed")
            
        }
        alertController?.addAction(alertAction)
        alertController?.addAction(alertAction1)
        alertController?.addAction(alertAction2)
    }
    
    
    @IBAction func showActionsheet(sender: AnyObject) {
        
        self.presentViewController(alertController!, animated: true, completion: nil)
    }


}














