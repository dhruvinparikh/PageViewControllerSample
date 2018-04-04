//
//  ViewController.swift
//  w2WebView
//
//  Created by Jawaad Sheikh on 2016-06-14.
//  Copyright © 2016 Jawaad Sheikh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView?
    @IBOutlet weak var activity: UIActivityIndicatorView?
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        activity?.startAnimating()
        activity?.isHidden = false;
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        activity?.stopAnimating()
        activity?.isHidden = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let urlAddress = URL(string: "https://www.humber.ca")
        let url = URLRequest(url: urlAddress!)
        webView?.loadRequest(url as URLRequest)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

