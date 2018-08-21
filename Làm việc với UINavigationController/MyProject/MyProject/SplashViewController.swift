//
//  MainViewController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/21/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    let imageViewLogo:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let lblTitle:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageViewLogo)
        // Do any additional setup after loading the view.
        view.addSubview(imageViewLogo)
        imageViewLogo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageViewLogo.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageViewLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageViewLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        lblTitle.topAnchor.constraint(equalTo: imageViewLogo.bottomAnchor, constant: 20).isActive = true
        lblTitle.centerXAnchor.constraint(equalTo: imageViewLogo.centerXAnchor).isActive = true
        
    }

}
