//
//  CustomView.swift
//  SeparateView
//
//  Created by Александр Воробьев on 30.11.2020.
//

import UIKit

final class CustomView: UIView {
    
    let square: UIView = UIView()
    
    init() {
        super.init()
        square.backgroundColor = .red
        addSubview(square)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
