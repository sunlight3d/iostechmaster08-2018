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
        textField.layer.borderColor = UIColor(red: 36/255, green: 45/255, blue: 49/255, alpha: 1).cgColor
        textField.layer.borderWidth = 1
        textField.placeholder = "Enter your email"
        textField.layer.cornerRadius = 25
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0,
                                                  width: 20,
                                                  height: textField.frame.height))
        textField.leftViewMode = .always
        
        return textField
    }()
    let txtPassword: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.isSecureTextEntry = true
        textField.placeholder = "Enter your password"
        textField.layer.borderColor = UIColor(red: 36/255, green: 45/255, blue: 49/255, alpha: 1).cgColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 25
        textField.insetsLayoutMarginsFromSafeArea = true
        
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0,
                                                  width: 20,
                                                  height: textField.frame.height))
        textField.leftViewMode = .always
        
        return textField
    }()
    let loginButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 36/255, green: 45/255, blue: 49/255, alpha: 1)
        button.setTitle("Sign in", for: .normal)
        button.layer.cornerRadius = 25
        return button
    }()
    
    private func layoutTxtEmail() {
        view.addSubview(txtEmail)
        txtEmail.heightAnchor.constraint(equalToConstant: 50).isActive = true
        txtEmail.widthAnchor.constraint(equalToConstant: 250).isActive = true
        txtEmail.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150).isActive = true
        txtEmail.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func layoutTxtPassword() {
        view.addSubview(txtPassword)
        txtPassword.widthAnchor.constraint(equalTo: txtEmail.widthAnchor).isActive = true
        txtPassword.heightAnchor.constraint(equalTo: txtEmail.heightAnchor).isActive = true
        txtPassword.topAnchor.constraint(equalTo: txtEmail.bottomAnchor, constant: 20).isActive = true
        txtPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    private func layoutLoginButton() {
        view.addSubview(loginButton)
        loginButton.widthAnchor.constraint(equalTo: txtEmail.widthAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalTo: txtEmail.heightAnchor).isActive = true
        loginButton.topAnchor.constraint(equalTo: txtPassword.bottomAnchor, constant: 20).isActive = true
        loginButton.addTarget(self, action: #selector(btnLogin), for: .touchUpInside)
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        layoutTxtEmail()
        layoutTxtPassword()
        layoutLoginButton()
    }
    @objc func btnLogin(sender: Any) {
        UserDefaults.standard.set(true, forKey: "userlogin")
        navigationController?.pushViewController(ProductViewController(), animated: true)
    }
        
    
}
