//
//  ViewController.swift
//  iOSAside
//
//  Created by Ryan Poplin on 1/23/16.
//  Copyright © 2016 Ryan Poplin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TestViewDelegate, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = self.view as! TestView
        
        view.delegate = self
        
        // could get this data from a model
        view.imageUrl = "http://images.apple.com/home/images/og.jpg?201601171933"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Memory Warning...")
    }
    
    func didAlert() {
        let alert = UIAlertController(title: "Characters must be > 1 and < 13!", message: nil, preferredStyle: .Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

}