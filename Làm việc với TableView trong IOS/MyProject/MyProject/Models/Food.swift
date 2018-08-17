//
//  Food.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/17/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class Food: NSObject {
    var foodName: String?
    var imageName: String?
    var foodDescription: String?
    override init() {
        
    }
    convenience init(foodName: String, foodDescription: String, imageName: String) {
        self.init()
        self.foodName = foodName
        self.foodDescription = foodDescription
        self.foodDescription = foodDescription
        self.imageName = imageName
        
    }
}
var foods = [
    Food(foodName:"Carrot marmalade",
         foodDescription: "For the yorkshire puddings, mix the flour, seeds, mustard, one teaspoon of salt",
         imageName: "carod.jpg"),
    Food(foodName:"Carrot marmalade",
         foodDescription: "I bought my first piece a few years ago, more out of curiosity than anything else.",
         imageName: "meat.jpg"),
    Food(foodName:"aniseed flavour",
         foodDescription: "Rachel Roddy’s recipe for caraway seed cake",
         imageName: "seedCake.jpg"),
    Food(foodName:"Piccalilli",
         foodDescription: "Piccalilli is the most strange and wonderful of British condiments.",
         imageName: "piccalilli.jpg"),
    Food(foodName:"Cá bống chiên cay",
         foodDescription: "Cá bống chiên cay ngon miễn chê",
         imageName: "cabong.jpg"),    
    
]
