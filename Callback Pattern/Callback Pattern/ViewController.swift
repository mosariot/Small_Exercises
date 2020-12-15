//
//  ViewController.swift
//  Callback Pattern
//
//  Created by Александр Воробьев on 29.06.2020.
//  Copyright © 2020 Александр Воробьев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            if let secondVC = segue.destination as? SecondViewController {
                secondVC.sendText = { [weak self] text in
                    guard let self = self else { return }
                    self.sendText(text: text)
                }
            }
        }
    }
    
    func sendText(text: String) {
        dataLabel.text = text
    }
}
