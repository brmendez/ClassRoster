//
//  DetailViewController.swift
//  Homework 3
//
//  Created by Brian Mendez on 8/12/14.
//  Copyright (c) 2014 Brian Mendez. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
    var people2 : Person!
    

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        textField.text = people2.fullName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
