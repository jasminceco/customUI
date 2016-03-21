//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var datePicker: UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("prining...")
        // Do any additional setup after loading the view, typically from a nib.
        datePicker = UIDatePicker()
        datePicker?.center = view.center
        view.addSubview(datePicker!)
        datePicker?.addTarget(self, action: "datePickerChanged:", forControlEvents: .ValueChanged)
        
        
    }
    // MARK: - target Action
    
    func datePickerChanged(sender: UIDatePicker)
    {
        print("Selected Date is: \(sender.date)")
        
    }
    // MARK: - Change Date Picker Mode
    
    @IBAction func changeDatePickerMode(sender: AnyObject) {
        datePicker?.datePickerMode = UIDatePickerMode.DateAndTime
    }
    // MARK: - Count Down Timer
    
    @IBAction func changeDatePickerToCountDown(sender: AnyObject) {
        datePicker?.datePickerMode = UIDatePickerMode.CountDownTimer
        let threeMinutes = 3 * 60 as NSTimeInterval // 3  * 60 sekundi je 3 minute
        datePicker?.countDownDuration = threeMinutes
    }
    
    
    // MARK: - Change Picker Min And Max Date
    @IBAction func changePickerMinMaxDate(sender: AnyObject) {
        datePicker?.datePickerMode = UIDatePickerMode.Date
        let oneYear: NSTimeInterval = 365 * 24 * 60 * 60 // 365 dana * 24 sata * 60 minuta * 60 sekundi
        let today = NSDate()
        
        let oneYearFormToday = today.dateByAddingTimeInterval(oneYear)
        let twoYearsFromToday = today.dateByAddingTimeInterval(oneYear * 2)
        
        //datePicker?.minimumDate = today
        datePicker?.minimumDate = oneYearFormToday
        
        datePicker?.maximumDate = twoYearsFromToday
        
    }
}

















