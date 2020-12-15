//
//  SecondViewController.swift
//  Callback Pattern
//
//  Created by Александр Воробьев on 29.06.2020.
//  Copyright © 2020 Александр Воробьев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var sendText: ((String)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataPressed(_ sender: UIButton) {
        if let sendText = sendText {
            sendText(textField.text!)
        }
        self.dismiss(animated: true, completion: nil)
    }
}

