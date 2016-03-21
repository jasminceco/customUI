//
//  ViewController.swift
//  AlertView
//
//  Created by Duc Tran on 5/4/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var alertControler: UIAlertController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
        
        // postavljanje alerta
        
        alertControler = UIAlertController(title: "Wellcome to Zing", message: "Please enter Your username", preferredStyle: UIAlertControllerStyle.Alert)
        // alert action
        let alertAction = UIAlertAction(title: "Cancel", style: .Default) { (action) -> Void in
            print("The done button was presed")
        }
        
        // add action
        
        alertControler?.addAction(alertAction)
        
        // add textfield in alert
        
        alertControler?.addTextFieldWithConfigurationHandler({ (textField) -> Void in
            
            //configure text field
            
            textField.placeholder = "Enter Your username"
        
        })
        
        let alertActionForTextField = UIAlertAction(title: "Continue", style: .Default, handler: { (action) -> Void in
            if let textFields = self.alertControler?.textFields{
                
                // array text fieldova zato ako imas vise izvlacis po indexu
                
                let theTextFields = textFields
                let username = theTextFields[0].text // nije unwraped
                
                print("your username is \(username!)")
            }
        })
        alertControler?.addAction(alertActionForTextField)
        
    }
    override func viewDidAppear(animated: Bool) {
        //prikaz u view will appear jer u trenutku kada se podigne inicijalizator u ovo slucaju view did load jos nije ucitao alertcontroller
        
        super.viewDidAppear(animated)
        self.presentViewController(alertControler!, animated: true, completion: nil)
    }
  

}

