//
//  ViewController.swift
//  Swift4WebView
//
//  Created by 舟木正憲 on 2018/09/14.
//  Copyright © 2018年 masanori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        
        let url = URL(string: "https://www.yahoo.co.jp")
        let urlRequest = URLRequest(url: url!)
        webView.loadRequest(urlRequest)
        
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

