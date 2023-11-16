//
//  page2 home.swift
//  ath2
//
//  Created by Vikrant Gholse on 31/10/23.
//

import UIKit
import AVFoundation


var darkmode = Bool()

class page2_home: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if darkmode == true
        {
            mainmenu.textColor = UIColor.white
            self.view.backgroundColor = UIColor.black
        }
        else
        {
            mainmenu.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func act1(_ sender: Any) {
        
        performSegue(withIdentifier: "act1", sender: self)
    }
    
    @IBOutlet weak var mainmenu: UILabel!
    var light : Bool = false
    @IBAction func torchbtn(_ sender: Any) {
        
//        toggleTorch()
        
        
        
       
        
        let alert1 = UIAlertController(title : "Flashlight ON", message: "Flashlight drains more battery", preferredStyle: .alert)
        let alert2 = UIAlertController(title : "Flashlight OFF", message: "Battery saving now", preferredStyle: .alert)
        //temp
        alert1.addAction(UIAlertAction(title : "OK", style : .default, handler: nil))
        alert2.addAction(UIAlertAction(title : "OK", style: .default, handler: nil))
        
        
        if light == false {
            light = true
            self.present(alert1, animated: true, completion: nil)
            
        }
        
        else if light == true {
            light = false
            self.present(alert2, animated: true, completion: nil)
            
        }
        
        
        
        
        
        
        
        
        
    }
    
    
    @IBAction func act2(_ sender: Any) {
        performSegue(withIdentifier: "act2", sender: self)
        
    }
    
    
    @IBAction func act3(_ sender: Any) {
        performSegue(withIdentifier: "act3", sender: self)
        
        
    }
    
    
    
    
    func toggleTorch() {
         guard let device = AVCaptureDevice.default(for: AVMediaType.video) else {
             // The device doesn't have a torch
             return
         }
         
         if device.hasTorch {
             do {
                 try device.lockForConfiguration()
                 if device.torchMode == .off {
                     try device.setTorchModeOn(level: 1.0) // Turn on the torch
                 } else {
                     device.torchMode = .off // Turn off the torch
                 }
                 device.unlockForConfiguration()
             } catch {
                 print("Error toggling the torch: \(error)")
             }
         }
     }
    
    
    @IBAction func voiceseg(_ sender: Any) {
        
        performSegue(withIdentifier: "voicepage", sender: self)
        
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
