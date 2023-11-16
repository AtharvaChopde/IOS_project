//
//  ViewController.swift
//  ath2
//
//  Created by Vikrant Gholse on 31/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var usernametext: UITextField!
    
    var light : Bool = false
    
    
    //outlet of switch
    @IBOutlet weak var switcho: UISwitch!
    
    //action of switch
    @IBAction func switcha(_ sender: Any) {
        
        
        //for switch state on or off
        if switcho.isOn
        {
            light = true
            self.view.backgroundColor = UIColor.black
        }
        
        else
        {
            light = false
            self.view.backgroundColor = UIColor.white
        }
        
    }
    
    @IBOutlet weak var passwordtext: UITextField!
    
    
    @IBAction func button(_ sender: Any) {
        
        
        if usernametext.text! == "nayan" && passwordtext.text! == "123456789"
        {
            
        darkmode = light
        performSegue(withIdentifier: "loginp1", sender: self)
        }
        else
        {
            //define styling of alert
            let alert1 = UIAlertController(title : "Wrong Username or Password", message: "Click forgot password to reset", preferredStyle: .actionSheet)
            //add action to alert
            alert1.addAction(UIAlertAction(title : "OK", style : .default, handler: nil))
            //display the alert on the screen
            self.present(alert1, animated: true, completion: nil)
            
        }
        
    }
    
    
    @IBAction func forbtn(_ sender: Any) {
        
        darkmode = light
        performSegue(withIdentifier: "forgot", sender: self)
        
        
    }
    
    
    @IBAction func aboutus(_ sender: Any) {
        
        //defining handler for about us butn
        let okHandler = {
            (ACTION : UIAlertAction) -> Void in
            
            if let url = URL(string : "https://drive.google.com/file/d/1LRs9M9ju0hsuDkfe6BwzQ98IYUu7Mvwt/view?usp=drive_link")
            {
                UIApplication.shared.open(url,options: [:],
                completionHandler: nil)
            }
            
        }
        
        
        let alert1 = UIAlertController(title : "Attention", message: "This will open in a different app", preferredStyle: .alert)
        
        alert1.addAction(UIAlertAction(title : "OK", style : .default, handler: okHandler))
        
        alert1.addAction(UIAlertAction(title : "Cancel", style : .default, handler: nil))
        
        self.present(alert1, animated: true, completion: nil)
        
    }
    
    
    
}

