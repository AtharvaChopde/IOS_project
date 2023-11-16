//
//  voiceViewController.swift
//  ath2
//
//  Created by Vikrant Gholse on 08/11/23.
//

import UIKit
import WebKit
class voiceViewController: UIViewController {
    
    
    let webview = WKWebView()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://voicechanger.io") else
        {
            return
        }
        webview.load(URLRequest(url: url))
        webview.frame = view.bounds
        view.addSubview(webview)
    }
     
   
    
   

}
