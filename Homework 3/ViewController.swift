//
//  ViewController.swift
//  Homework 3
//
//  Created by Brian Mendez on 8/12/14.
//  Copyright (c) 2014 Brian Mendez. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView:UITableView!
    
    var people : [Person]!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.createPeople()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func createPeople() {
        var brad = Person(firstName: "Brad", lastName: "Johnson")
        var clem = Person(firstName: "Johnny", lastName: "Clem")
        var russell = Person(firstName: "Russell", lastName: "Wilson")
        var sherman = Person(firstName: "Richard", lastName: "Sherman")
        var elvis = Person(firstName: "Elvis", lastName: "Presley")
        var santa = Person(firstName: "Santa", lastName: "Claus")
        
        
//        self.people.append(brad)
//        self.people.append(clem)
//        self.people.append(russell)
//        self.people.append(sherman)
//        self.people.append(elvis)
//        self.people.append(santa)
        
        var peopleInClass = [brad, clem, russell, sherman, elvis, santa]
        self.people = peopleInClass
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "showNext" {
            
            let destination = segue.destinationViewController as DetailViewController
            destination.people2 = people [tableView!.indexPathForSelectedRow().row]
        }
    }
    
    // func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
    // return 10
    // }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.people.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        //get my cell
        println("method called for cell at row:\(indexPath.row)")
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        //configure it for the row
        var personForRow = self.people[indexPath.row]
        cell.textLabel.text = personForRow.fullName()
        //return the cell
        return cell
    }
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println(indexPath.section)
    }
    
    
}