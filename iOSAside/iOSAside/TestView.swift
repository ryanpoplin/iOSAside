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
    
    @IBAction func buttonWasPressed(sender: UIButton) {
        if textField.text?.characters.count > 13 || textField.text?.isEmpty == true {
            delegate?.didAlert()
        } else {
            labelOne.text = textField.text
            labelTwo.text = textField.text
        }
    }

}