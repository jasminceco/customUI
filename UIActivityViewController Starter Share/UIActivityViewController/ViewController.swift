//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Developer Inspirus on 5/6/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
    // MARK: - IBOutlet
    @IBOutlet weak var textField: UITextField!
    
    // MARK: - Properties
    var activityViewControler: UIActivityViewController!
    

    // MARK: - Target Action
    
    @IBAction func shareButtonTapped(sender: UIButton)
    {
        if textField.text == "" {
            
            let message = "Please enter some text to share with the world"
            let alertController = UIAlertController(title: "Ooops", message: message, preferredStyle: UIAlertControllerStyle.Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            presentViewController(alertController, animated: true, completion: nil)
        }else{
            
            //create instance of UIAtivityViewControler
            // activityitems : an Array of what we wont to put
            // appplicationActivities: your apps's sharing servicers
            
            activityViewControler = UIActivityViewController(activityItems: [textField.text! as NSString], applicationActivities: nil)
            
            presentViewController(activityViewControler, animated: true, completion: nil)
            
        }
        
    }
    
    // MARK - UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if  textField == self.textField{
            textField.resignFirstResponder()
        }
        return true
    }
    
}

