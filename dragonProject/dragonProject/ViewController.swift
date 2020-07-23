//
//  ViewController.swift
//  dragonProject
//
//  Created by user on 7/21/20.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var dragons : [Dragon] = []
        super.viewDidLoad()
    let dragon1 = dragon(name:"Giselle", clothingItem:"shirt")
    let dragon2 = dragon(name:"Kelsi", clothingItem:"pants")
    
    
    
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: indexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID")
        
        let dragon = dragons[indexPath.row]
        cell!.textLabel?.text = dragon.name
        cell!.detailtextLabel?.text = dragon.clothingItem
        
        return cell!
        
    }
    
    
    
    
    
    
    
    
    
    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

