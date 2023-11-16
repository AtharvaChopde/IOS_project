//
//  CustomTableViewCell.swift
//  ath2
//
//  Created by Vikrant Gholse on 01/11/23.
//

import UIKit
//temp
protocol CustomTableViewCellDelegate : AnyObject{
   func didTapButtonInCell (_ cell : CustomTableViewCell)
}

class CustomTableViewCell: UITableViewCell {
    //temp
   weak var delegate :CustomTableViewCellDelegate?

    @IBAction func buttonTapped(_ sender: Any) {
        
        delegate?.didTapButtonInCell(self)
    }
    @IBOutlet weak var friendview: UIView!
    
    @IBOutlet weak var namelbl: UILabel!
    
   
    @IBOutlet weak var textb1: UITextField!
    
    @IBOutlet weak var sego: UISegmentedControl!
    
    
    @IBAction func butn(_ sender: Any) {
        
        friendview.backgroundColor = UIColor.red
        
        namelbl.text = textb1.text
        
    }
    
   
    @IBAction func sega(_ sender: Any) {
        
        let x = sego.selectedSegmentIndex
        if x == 0
        {
            friendview.backgroundColor = UIColor.red
        }
        
        if x == 1
        {
            friendview.backgroundColor = UIColor.yellow
        }
        
        if x == 2
        {
            friendview.backgroundColor = UIColor.green
        }
        
        
        
        
    }
    
    
    
}
