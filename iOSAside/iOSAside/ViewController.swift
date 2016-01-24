//
//  ViewController.swift
//  iOSAside
//
//  Created by Ryan Poplin on 1/23/16.
//  Copyright © 2016 Ryan Poplin. All rights reserved.
//

import UIKit

// TODO: make it so that the keyboard can be dismissed...
class ViewController: UIViewController, TestViewDelegate, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = self.view as! TestView
        
        view.delegate = self
        
        // could get this data from a model
        view.imageUrl = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRKr_ibQdOd_WCj7YSqFDwm6ZOkcdJzNnxd45-bFg7BEv6SKZJiKQ"
        
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