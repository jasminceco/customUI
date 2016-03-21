//
//  ViewController.swift
//  LoadWebPagesWtihWebKit
//
//  Created by Duc Tran on 5/6/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate
{
    var webView: WKWebView!
    
    let featuredURL = "http://www.developerinspirus.io"
    let tutorialsURL = "http://www.developerinspirus.io/tutorials"
    let coursesURL = "http://www.developerinspirus.io/courses/"

    override func viewDidLoad() {
        super.viewDidLoad()
        let preferance = WKPreferences()
        preferance.javaScriptEnabled = true
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferance
        
        // create instance of web View
        webView = WKWebView(frame: view.bounds, configuration: configuration)
        view.addSubview(webView)
        webView.navigationDelegate = self
        webLoadURL(coursesURL)
    }
    
    func webLoadURL(urlString: String){
        if let url = NSURL(string: urlString) {
            let urlRequest = NSURLRequest(URL: url)
            webView.loadRequest(urlRequest)
        }
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    // MARK: - Target Action
   
    @IBAction func segmentControlemenuChanged(sender: UISegmentedControl) {
        
        let selectedIndex = sender.selectedSegmentIndex
        switch(selectedIndex){
        case 0 : webLoadURL(featuredURL)
            break
        case 1 : webLoadURL(tutorialsURL)
            break
        case 2 : webLoadURL(coursesURL)
            break
        default :
            break
        }
        
        
    }
    
    
    // MARK: - WKNavigationDelegate
    func webView(webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }

}













