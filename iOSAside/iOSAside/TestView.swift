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
    
    // a good example of keeping your logic in the right places...
    var imageUrl: String! {
        didSet {
            
            // TODO: the the updateUI method setup properly...
            
            dispatch_async(dispatch_get_main_queue()) {
                if let url = NSURL(string: self.imageUrl) {
                    if let data = NSData(contentsOfURL: url) {
                        self.sexyMama.image = UIImage(data: data)
                    }
                }
            }
            
        }
    }
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textField: UITextField!
    // TODO: add a loading spinner to the center of the imageView...
    @IBOutlet weak var sexyMama: UIImageView!
    
    @IBAction func buttonWasPressed(sender: UIButton) {
        if textField.text?.characters.count > 13 || textField.text?.isEmpty == true {
            delegate?.didAlert()
        } else {
            labelOne.text = textField.text
            labelTwo.text = textField.text
        }
    }

}