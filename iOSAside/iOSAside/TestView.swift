//
//  TestView.swift
//  iOSAside
//
//  Created by Ryan Poplin on 1/24/16.
//  Copyright © 2016 Ryan Poplin. All rights reserved.
//

import UIKit

protocol TestViewDelegate: class {
    func didAlert()
}

class TestView: UIView {
    
    weak var delegate: TestViewDelegate?
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func clearTextField(sender: UIButton) {
        textField.text = nil
    }
    
    @IBAction func buttonWasPressed(sender: UIButton) {
        
        self.textField.resignFirstResponder()
        
        if textField.text?.characters.count > 13 || textField.text?.isEmpty == true {
            delegate?.didAlert()
        } else {
            labelOne.text = textField.text
            labelTwo.text = textField.text
        }
    
    }
    
    var imageUrl: String! {
        didSet {
            
            // TODO: check out image cache
            
            dispatch_async(dispatch_get_main_queue()) {
                
                let activityView = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.Gray)
                activityView.center = self.imageView.center
                activityView.startAnimating()
                self.imageView.addSubview(activityView)
                
                if let url = NSURL(string: self.imageUrl) {
                    if let data = NSData(contentsOfURL: url) {
                        self.imageView.image = UIImage(data: data)
                        activityView.stopAnimating()
                        activityView.removeFromSuperview()
                    }
                }
                
            }
            
        }
    }
    
}