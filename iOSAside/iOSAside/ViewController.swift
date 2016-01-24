//
//  ViewController.swift
//  iOSAside
//
//  Created by Ryan Poplin on 1/23/16.
//  Copyright © 2016 Ryan Poplin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TestViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = self.view as! TestView
        view.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Memory is fucked...")
    }
    
    func didAlert() {
        let alert = UIAlertController(title: "You cannot add a message with more than 13 characters, and no less that 1 character!", message: "Fuck you if that's a problem for you!", preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}