//
//  ProductViewController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/22/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    var lblTitle:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(22)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        // Do any additional setup after loading the view.
    }

}
