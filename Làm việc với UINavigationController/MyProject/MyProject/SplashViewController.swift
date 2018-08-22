//
//  MainViewController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/21/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    var timer:Timer?
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
        timer = Timer(timeInterval: 2, repeats: false) { (timer) in
            let isLoggedIn = UserDefaults.standard.bool(forKey: "userlogin")
            if (isLoggedIn) {
                self.navigationController?.pushViewController(ProductViewController(), animated: true)
            } else {
                self.navigationController?.pushViewController(LoginViewController(), animated: true)
            }
            UserDefaults.standard.set(true, forKey: "userlogin")
        }
        
        // Do any additional setup after loading the view.
        view.addSubview(imageViewLogo)
        imageViewLogo.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageViewLogo.heightAnchor.constraint(equalToConstant: 150).isActive = true
        imageViewLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageViewLogo.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: imageViewLogo.bottomAnchor, constant: 20).isActive = true
        lblTitle.centerXAnchor.constraint(equalTo: imageViewLogo.centerXAnchor).isActive = true
        
    }
    override func viewDidDisappear(_ animated: Bool) {
        timer?.invalidate()
    }    
}
