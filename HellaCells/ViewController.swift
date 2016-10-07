//
//  ViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewController: UITableView!
    
    var hundredArray: [Int] = []
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        for i in 1...100 {
            
            
            hundredArray.append(i)
            
            print (hundredArray)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        return hundredArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        
        let cell = tableView.dequeueReusableCell(withIdentifier: "hundredCell", for: indexPath)
        
        let hundredRow = hundredArray[indexPath.row]
        
        cell.textLabel?.text = String(hundredRow)
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

        
        if segue.identifier == "hundredSegue" {
            
            let hundredDest = segue.destination as! HellaMasterTableViewController
            
            let pickedRow = tableViewController.indexPathForSelectedRow?.row
            
            if let unwrappedRow = pickedRow {
                
                hundredDest.hundred = String(hundredArray[unwrappedRow])
            }
            
            
        }
    }
}

