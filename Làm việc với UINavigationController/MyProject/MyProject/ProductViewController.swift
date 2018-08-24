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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.isNavigationBarHidden = false
        layoutLblTitle()
    }
    private func layoutLblTitle() {
        view.addSubview(lblTitle)
        lblTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        lblTitle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    private func setupNavigation(){
        let rightButton = UIBarButtonItem(title: "Logout",
                                          style: .plain,
                                          target: self,
                                          action: #selector(btnLogout))
        self.navigationItem.rightBarButtonItem = rightButton
    }
    @objc func btnLogout() {
        UserDefaults.standard.set(false, forKey: "userlogin")
        navigationController?.popViewController(animated: true)
    }

}
