//
//  ViewController.swift
//  UIPickerView Demo
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    // MARK: - Variables
    
    var pickerView : UIPickerView?
    var currentDateSource = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10,]
    var newdataSource = [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
 
    
     // MARK: - ViewDidLoad
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        pickerView = UIPickerView()
        pickerView?.center = view.center
        view.addSubview(pickerView!)
        pickerView?.dataSource = self
        pickerView?.delegate = self
    }
    
    // MARK: - UIPickerViewDelegate
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return String(currentDateSource[row])
    }
    
    // MARK: - UIPickerViewDataSource
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        if pickerView == self.pickerView
            
        {
            return 1
        }
        
        return 0
    }
    
    // returns the # of rows in each component..
   
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        
        if pickerView == self.pickerView
        {
            return currentDateSource.count
        }
        
        return 0
    }
    
    // MARK: - UIActionButtons
    
    @IBAction func pickAValue(sender: AnyObject)
    {
        let selectedRow = pickerView?.selectedRowInComponent(0)
        print(currentDateSource[selectedRow!])
        
    }
    
    @IBAction func changeDataSource(sender: AnyObject)
    {
        
        currentDateSource = newdataSource
        pickerView?.reloadAllComponents()
    }
}
















