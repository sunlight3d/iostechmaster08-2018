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
        sv.axis = .vertical
        sv.alignment = .center
        sv.distribution = .equalSpacing
//        sv.spacing = 10
        
        return sv
    }()
    private func layoutTxtEmail() {
        stackView.addArrangedSubview(txtEmail)
        txtEmail.backgroundColor = .red
        txtEmail.heightAnchor.constraint(equalToConstant: 40).isActive = true
        txtEmail.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 30).isActive = true
        txtEmail.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -30).isActive = true
    }
    private func layoutTxtPassword() {
        stackView.addArrangedSubview(txtPassword)
        txtPassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
        txtPassword.leftAnchor.constraint(equalTo: txtEmail.leftAnchor).isActive = true
        txtPassword.rightAnchor.constraint(equalTo: txtEmail.rightAnchor).isActive = true
        txtPassword.topAnchor.constraint(equalTo: txtEmail.bottomAnchor, constant: 40).isActive = true
    }
    private func layoutLoginButton() {
        stackView.addArrangedSubview(loginButton)
        loginButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        loginButton.leftAnchor.constraint(equalTo: txtEmail.leftAnchor).isActive = true
        loginButton.rightAnchor.constraint(equalTo: txtEmail.rightAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: txtEmail.bottomAnchor, constant: 40).isActive = true
        loginButton.addTarget(self, action: #selector(btnLogin), for: .touchUpInside)
    }
    private func layoutStackView() {
        view.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutStackView()
        layoutTxtEmail()
        layoutTxtPassword()
//        layoutLoginButton()
    }
    @objc func btnLogin(sender: Any) {
        UserDefaults.standard.set(true, forKey: "userlogin")            
    }
    
    
    
}
