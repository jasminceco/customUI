//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by Duc Tran on 5/6/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

/*
    content size: let scroll view know the size of the content to be displayed
    need to set the scroll view content size properly

*/

class ViewController: UIViewController
{

    var imageView: UIImageView!
    var scrolView: UIScrollView!
    var image = UIImage(named: "CoreGraphics_Website")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: self.image)
        scrolView = UIScrollView(frame: view.bounds)
        scrolView.contentSize = imageView.bounds.size
        
        scrolView.addSubview(imageView)
        view.addSubview(scrolView)
        
    }
    
    // MARK: - UIScrollViewDelegate
    
}
























