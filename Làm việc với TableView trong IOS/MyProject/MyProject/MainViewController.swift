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
    //MARK - UITableViewDelegate, UITableViewDataSource
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! FoodTableViewCell        
        cell.food = foods[indexPath.row]
        if (selectedRow == indexPath.row) {
            cell.backgroundColor = .lightGray
        } else {
            cell.backgroundColor = .white
        }
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods.count;
    }
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedRow = indexPath.row
        tableView.reloadData()
    }
    @IBAction func btnDelete(sender: Any) {
        if(selectedRow < 0) {
            return
        }
        let alert = UIAlertController(title: "Delete", message: "Are you sure you want to delete this ?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action: UIAlertAction!) in
            foods.remove(at: self.selectedRow)
            self.tableView?.reloadData()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (action: UIAlertAction!) in
            
        }))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func btnAdd(sender: Any) {
        
    }
    
}
