//
//  FoodTableViewCell.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/17/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class FoodTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewFood: UIImageView?;
    @IBOutlet weak var lblFoodName: UILabel?;
    @IBOutlet weak var lblFoodDescription: UILabel?;
    
    
    var food: Food? {
        didSet{
            lblFoodName?.text = food?.foodName
            lblFoodDescription?.text = food?.foodDescription
            imageViewFood?.image = UIImage(named: food?.imageName ?? "")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
