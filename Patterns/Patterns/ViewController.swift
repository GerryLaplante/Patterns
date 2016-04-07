//
//  ViewController.swift
//  Patterns
//
//  Created by Paul Wright on 4/6/16.
//  Copyright © 2016 Gerry Laplante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblViewPatterns: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblViewPatterns.dataSource = self
        self.tblViewPatterns.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = "No Shoes, No Shirt, No Problem"
        return cell
    }



}

