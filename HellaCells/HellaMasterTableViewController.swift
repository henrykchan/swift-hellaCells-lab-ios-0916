//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Henry Chan on 10/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController: UIViewController {

    
    
    @IBOutlet weak var hundredLabel: UILabel!
    
    
    
    var hundred: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let hundred = hundred {
            
            hundredLabel?.text = hundred
        }

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    


}
