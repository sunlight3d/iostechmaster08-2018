//
//  ViewController3.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/21/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    var lblTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(lblTitle)
        lblTitle.text = "This is Tab3"        
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        // Do any additional setup after loading the view.
    }
    
}
