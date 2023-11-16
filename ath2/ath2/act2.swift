//
//  act2.swift
//  ath2
//
//  Created by Vikrant Gholse on 31/10/23.
//
import UIKit
class act2: UIViewController{
    
    @IBOutlet weak var tableview: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self
        tableview.dataSource = self
    }
    //temp
    func didTapButtonInCell(_ cell : CustomTableViewCell)
    {
        if let labelText = cell.namelbl.text {
            
            let alert1 = UIAlertController(title : "Your task", message: labelText , preferredStyle: .alert)
            
            alert1.addAction(UIAlertAction(title : "OK", style : .default, handler: nil))
            
            self.present(alert1, animated: true, completion: nil)
        
        }
    }
}
extension act2: UITableViewDelegate, UITableViewDataSource, CustomTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 128
    }
    
}


