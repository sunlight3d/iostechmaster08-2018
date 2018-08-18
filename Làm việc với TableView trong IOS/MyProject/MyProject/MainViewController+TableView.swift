//
//  MainViewController+TableView.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/18/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit
extension MainViewController {
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
}
