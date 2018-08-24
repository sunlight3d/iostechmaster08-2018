//
//  ViewController1.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/21/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class ViewController1: UIViewController, UITextFieldDelegate {
    
    var lblTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var txtName: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(lblTitle)
        lblTitle.text = "This is Tab1"
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(txtName)
        txtName.centerXAnchor.constraint(equalTo: lblTitle.centerXAnchor).isActive = true
        txtName.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 20).isActive = true
        txtName.widthAnchor.constraint(equalToConstant: 200).isActive = true
        txtName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        txtName.placeholder = "Enter your name"
        txtName.borderStyle = .roundedRect
        txtName.autocorrectionType = .no
        
        // TextField
        txtName.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        (self.tabBarController as! TabbarController).name = textField.text ?? ""
        view.endEditing(true)
        return true
    }

}
