//
//  ViewController.swift
//  Patterns
//
//  Created by Paul Wright on 4/6/16.
//  Copyright © 2016 Gerry Laplante. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tblViewPatterns: UITableView!
    
    var patterns : [Pattern] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tblViewPatterns.dataSource = self
        self.tblViewPatterns.delegate = self
        
        createTestPatterns()
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let request = NSFetchRequest(entityName: "Pattern")
        
        let results = try! context.executeFetchRequest(request)
        
        if (results.isEmpty == false){
            self.patterns = results as! [Pattern]
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.patterns.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let pattern = self.patterns[indexPath.row]
        
        cell.textLabel?.text = pattern.name
        return cell
    }
    
    func createTestPatterns() {
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
        let pattern = NSEntityDescription.insertNewObjectForEntityForName("Pattern", inManagedObjectContext: context) as! Pattern
        pattern.name = "Really Cool Pants"
        try! context.save()
        
    }



}

