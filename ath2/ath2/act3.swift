//
//  act3.swift
//  ath2
//
//  Created by Vikrant Gholse on 31/10/23.
//

import UIKit
import WebKit

class act3: UIViewController {

    
    let webview = WKWebView()
    override func viewDidLoad() {
        super.viewDidLoad()

        
        guard let url = URL(string:"https://chat.openai.com") else
        {
            return
        }
        
        
      
        webview.load(URLRequest(url:url))
        webview.frame=view.bounds
        
        view.addSubview(webview)
        
        // Do any additional setup after loading the view.
    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
