//
//  SecondViewController.swift
//  Project1
//
//  Created by Nguyen Duc Hoang on 8/9/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func btnNavigateBack(sender: Any) {
        /*
        self.dismiss(animated: true) {
            
        }
        */
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
