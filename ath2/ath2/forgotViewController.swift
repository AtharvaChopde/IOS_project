//
//  forgotViewController.swift
//  ath2
//
//  Created by Vikrant Gholse on 01/11/23.
//

import UIKit

class forgotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if darkmode == false
        {
            
            self.view.backgroundColor = UIColor.white
        }
        else
        {
            
            self.view.backgroundColor = UIColor.black
        }
    }
    

    @IBAction func submit(_ sender: Any) {
        
        let okHandler = {
            (ACTION : UIAlertAction) -> Void in
            
            print("hello")
            
        }
        
        
        let alert1 = UIAlertController(title : "OTP sent", message: "Check your email", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction(title : "OK", style : .default, handler: okHandler))
        
        self.present(alert1, animated: true, completion: nil)
        
    }
    @IBOutlet weak var emailin: UITextField!
   

}
