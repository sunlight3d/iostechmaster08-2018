//
//  MainViewController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/14/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,
    UITableViewDelegate, UITableViewDataSource {
    var selectedRow:Int = -1
    
    @IBOutlet var tableView: UITableView? 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }    
    @IBAction func btnDelete(sender: Any) {
        if(selectedRow < 0) {
            return
        }
        AlertManager.showAlert(viewController: self,
                               title: "Delete",
                               message: "Are you sure you want to delete?",
                               handlerOK: {
                foods.remove(at: self.selectedRow)
                self.tableView?.reloadData()
        }, handlerCancel: {
            
        })
    }
    @IBAction func btnAdd(sender: Any) {
        
    }
    
}
