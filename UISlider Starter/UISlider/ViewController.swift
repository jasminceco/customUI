//
//  ViewController.swift
//  UISlider
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var slider : UISlider!
    
    @IBOutlet var sliderValueChangedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        slider = UISlider(frame: CGRect(x: 100, y: 200, width: 200, height: 23))
        slider.center = view.center
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = slider.maximumValue / 2.0
        
        view.addSubview(slider)
        slider.addTarget(self, action: "sliderValueChagned:", forControlEvents: .ValueChanged)
        slider.continuous = false
        changeThumbImg()
        changeSliderMinAndMaxColor()
        
    }
    func sliderValueChagned (sender: UISlider){
        sliderValueChangedLabel.text = String(sender.value)
    }
    func changeThumbImg(){
        //slider.thumbTintColor = UIColor.redColor()
        
        slider.setThumbImage(UIImage(named: "thumbNormal"), forState: .Normal)
        slider.setThumbImage(UIImage(named: "thumbHighlighted"), forState: .Highlighted)
        
    }
    
    func changeSliderMinAndMaxColor() {
        slider.minimumTrackTintColor = UIColor.greenColor()
        slider.maximumTrackTintColor = UIColor.blackColor()
        
    }
    
}










