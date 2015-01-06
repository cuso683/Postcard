//
//  ViewController.swift
//  Postcard
//
//  Created by Marco Vavassori on 05/01/15.
//  Copyright (c) 2015 Cuso683. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
        // Change Lebel text
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        // Clear Message text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Change Mail Button Text
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    

}

