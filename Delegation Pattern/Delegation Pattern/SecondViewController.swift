//
//  SecondViewController.swift
//  Delegation Pattern
//
//  Created by Александр Воробьев on 29.06.2020.
//  Copyright © 2020 Александр Воробьев. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var delegate: ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendDataPressed(_ sender: UIButton) {
        delegate?.sendText(text: textField.text!)
        self.dismiss(animated: true, completion: nil)
    }
}

