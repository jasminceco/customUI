//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControl : UISegmentedControl!
    let items = ["Apple", "Google", "Facebook"]
    let itemsWithIMG = NSArray(objects: "Google", UIImage(named: "AppleIcon")!, "Facebook")
    
    
    // MARK: - IBOulet
    @IBOutlet weak var segmentTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentedControl = UISegmentedControl(items: itemsWithIMG as [AnyObject])
        segmentedControl.center = CGPointMake(view.center.x, view.center.y + 200)
        view.addSubview(segmentedControl)
        
        segmentedControl.addTarget(self, action: "SegmentedCotrolChange:", forControlEvents: .ValueChanged)
    
    }
    
    // MARK: - Target Action
    
    func SegmentedCotrolChange(sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex
        print(selectedIndex)
        
            switch (selectedIndex){
            case 0:
                segmentTextLabel.text = "Google"
                break
            case 1:
                segmentTextLabel.text = "Apple"
                break
            case 2:
                segmentTextLabel.text = "Facebook"
                break
            default:
                break
                
            }
        
        // MARK: - Opcija sa naslovom iz zadanog Segmenta prema indexu /// pravo COOL ///
        /*
        if let selectedSegment = sender.titleForSegmentAtIndex(selectedIndex) {
            segmentTextLabel.text = selectedSegment
        }
        */
    }
}
























