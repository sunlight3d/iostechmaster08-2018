//
//  LoginViewController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/22/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let txtEmail: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.keyboardType = .emailAddress
        return textField
    }()
    let txtPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        return textField
    }()
    let loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let stackView:UIStackView = {
        let sv = UIStackView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.alignment = .center
        sv.distribution = UIStackViewDistribution.fill
        return sv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        stackView.addArrangedSubview(txtEmail)
        stackView.addArrangedSubview(txtPassword)
        stackView.addArrangedSubview(loginButton)
        
        // Do any additional setup after loading the view.
    }

}
