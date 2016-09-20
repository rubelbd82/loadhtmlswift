//
//  ViewController.swift
//  LoadLocalHtml
//
//  Created by Farhad on 9/20/16.
//  Copyright © 2016 WebInDream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadHtmlFile()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadHtmlCode() {
        let htmlCode = "<html><head><title>Wonderful web</title></head> <body><p>wonderful web. loading html code in <strong>webview</strong></></body>"
        webView.loadHTMLString(htmlCode, baseURL: nil)
    }
    
    func loadHtmlFile() {
        let url = NSBundle.mainBundle().URLForResource("contactus", withExtension:"html")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
}

