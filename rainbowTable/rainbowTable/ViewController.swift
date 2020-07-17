//
//  ViewController.swift
//  rainbowTable
//
//  Created by user on 7/16/20.
//  Copyright © 2020 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "CellID")
        cell?.textLabel?.text = "Row \(indexPath.row)"
        cell?.backgroundColor = colors[indexPath.row]
        return cell!
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    
    var colors = [UIColor.red, UIColor.green, UIColor.blue]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

