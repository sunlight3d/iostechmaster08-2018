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
    var persons = [
                    (name: "Hoang", age: 30),
                    (name: "Alex", age: 25),
                    (name: "Nguyễn Văn A", age: 40),
                    (name: "Nguyễn Văn B", age: 36),
                    (name: "Nguyễn Văn C", age: 32),
                   ]
    //☑︎☐
    
    @IBOutlet var tableView: UITableView? 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK - UITableViewDelegate, UITableViewDataSource
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        let selectedPerson = persons[indexPath.row];
        cell.textLabel?.text  = "\(selectedPerson.name) - \(selectedPerson.age)"
        cell.backgroundColor = indexPath.row % 2 == 0 ? .red : .green
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected: \(indexPath.row)")
    }
    @IBAction func btnAdd(sender: Any) {
        persons.append((name: "Nguyen Van X",27))
        tableView?.reloadData()
    }
    @IBAction func btnDelete(sender: Any) {
        persons.remove(at: 0)
        tableView?.reloadData()
    }
    
}
