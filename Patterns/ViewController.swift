//
//  ViewController.swift
//  Patterns
//
//  Created by Gerry Laplante on 4/6/16.
//  Copyright © 2016 Gerry Laplante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tvPatterns: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tvPatterns.dataSource = self
        self.tvPatterns.delegate = self
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel?.text = "No Shirts, No Shoes, No Service"
        return cell
    }


}

