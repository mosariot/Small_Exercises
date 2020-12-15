//
//  ViewController.swift
//  Delegation Pattern
//
//  Created by Александр Воробьев on 29.06.2020.
//  Copyright © 2020 Александр Воробьев. All rights reserved.
//

import UIKit

protocol ViewControllerDelegate: AnyObject {
    func sendText(text: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataLabel.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            if let secondVC = segue.destination as? SecondViewController {
                secondVC.delegate = self
            }
        }
    }
}

//MARK: - ViewControllerDelegate

extension ViewController: ViewControllerDelegate {
    func sendText(text: String) {
        dataLabel.text = text
    }
}
