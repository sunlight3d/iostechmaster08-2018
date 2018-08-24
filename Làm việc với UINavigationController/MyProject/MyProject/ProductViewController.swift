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
        label.text = "This contains Product's information"
        return label
    }()
    
    let logoutButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 36/255, green: 45/255, blue: 49/255, alpha: 1)
        button.setTitle("Logout", for: .normal)
        button.layer.cornerRadius = 25
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white        
        layoutLblTitle()
        layoutlogoutButton()
    }
    private func layoutLblTitle() {
        view.addSubview(lblTitle)
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    private func layoutlogoutButton() {
        view.addSubview(logoutButton)
        
        logoutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        logoutButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
        logoutButton.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 30).isActive = true
        logoutButton.addTarget(self, action: #selector(btnLogout), for: .touchUpInside)
        logoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    @objc func btnLogout() {
        UserDefaults.standard.set(false, forKey: "userlogin")
        var isLoggedOut = false
        navigationController?.viewControllers.forEach({ (viewController) in
            if (viewController is LoginViewController) {
                navigationController?.popToViewController(viewController, animated: true)
                isLoggedOut = true
            }
        })
        if(!isLoggedOut) {
            navigationController?.pushViewController(LoginViewController(), animated: true)
        }
        
        
    }

}
