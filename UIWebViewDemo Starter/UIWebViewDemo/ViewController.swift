//
//  ViewController.swift
//  UIWebViewDemo
//
//  Created by Duc Tran on 5/6/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

/*
 * Using a WebView:
 *      + loadData:MIMEType:textEncodingName:baseURL:  => load NSData into webview
 *      + loadHTMLString:baseURL: => load a String of valid HTML that the browser can render
 *      + loadRequest: => load a NSURLRequest constructed from a NSURL *popular*
 */

class ViewController: UIViewController {
    
    let htmlString = "<br/><strong>DeveloperInspirus.io</strong><br/>FREE iOS Tutorials Every Week"
    
    let featuredURL = "http://www.developerinspirus.io"
    let tutorialsURL = "http://www.developerinspirus.io/tutorials"
    let coursesURL = "http://www.developerinspirus.io/courses/"
    let signupURL = "http://www.developerinspirus.io/?register=http://www.developerinspirus.io/"

    override func viewDidLoad() {
        super.viewDidLoad()
       loadWebSite(featuredURL)
        //loadHTML()
    }

    func loadHTML(){
        let webView = UIWebView(frame: view.bounds)
        webView.loadHTMLString(htmlString, baseURL: nil)
        view.addSubview(webView)
    }
    // load a String of valid HTML
    
    
    // load a website from a url
    
    func loadWebSite(StringURL: String){
        var frame = view.bounds
        frame.origin.y = UIApplication.sharedApplication().statusBarFrame.height - 20
        frame.size.height -= frame.origin.y
        let webView = UIWebView(frame: frame)
        webView.scalesPageToFit = true
        view.addSubview(webView)
        
        if let url = NSURL(string: StringURL){
            let request = NSURLRequest(URL: url)
            webView.loadRequest(request)
        }
    }
    
    
    @IBAction func menuChanged(sender: UISegmentedControl)
    {
        let selectedIndex = sender.selectedSegmentIndex
        switch selectedIndex
        {
        case 0:
            loadWebSite(featuredURL)
            break
        case 1:
            loadWebSite(tutorialsURL)
            break
        case 2:
            loadWebSite(coursesURL)
            break
        default:
            loadWebSite(signupURL)
            break
        }
    }

    
    @IBAction func loadSignUpPage(sender: AnyObject)
    {
       loadWebSite(signupURL)
    }
    
    // MARK: - UIWebViewDelegate
    
    // add network activity indicator:
    //      (1) subscribe self as web view delegate => get noticed when it starts loading
    //      (2) when it finished loading, we also get noticed
    
    

}















