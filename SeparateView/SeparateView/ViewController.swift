//
//  ViewController.swift
//  SeparateView
//
//  Created by Александр Воробьев on 30.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = CustomView()
    }


}

