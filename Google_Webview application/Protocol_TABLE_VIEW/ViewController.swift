//
//  ViewController.swift
//  Protocol_TABLE_VIEW
//
//  Created by Mayurii Gajbhiye on 27/03/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.

//info plist -add view controller based bar ststus.........say No

import UIKit
import WebKit //go to buildphase - link binary - webkit.framework..

class ViewController: UIViewController {

    @IBOutlet weak var webViewContent: WKWebView!//change uiwebView
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    let urlLink = URL(string: "http://www.google.com")
   let urlReq = URLRequest(url: urlLink!)
        
        webViewContent.load(urlReq)
        //go to plist app transport - allow - yes 
    }

    @IBAction func rewindBtn(_ sender: Any) {
  
    }
    @IBAction func forwardBtn(_ sender: Any) {
  
    }
    @IBAction func refreshBtn(_ sender: Any) {
  
    }
    
    @IBAction func stopBtn(_ sender: Any) {
  
    }
    
    
    
}

