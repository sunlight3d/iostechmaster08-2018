
//
//  TabbarController.swift
//  MyProject
//
//  Created by Nguyen Duc Hoang on 8/21/18.
//  Copyright © 2018 Nguyen Duc Hoang. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
    var name:String = ""
    
    let vc1 = ViewController1()
    let vc2 = ViewController2()
    let vc3 = ViewController3()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        vc1.tabBarItem = UITabBarItem(title: "Home",
                                      image: #imageLiteral(resourceName: "icon-item1"), selectedImage: #imageLiteral(resourceName: "icon-item1-selected"))
        vc1.tabBarItem.tag = 0
        
        vc2.tabBarItem = UITabBarItem(title: "Calendar",
                                      image: #imageLiteral(resourceName: "icon-item2"), selectedImage: #imageLiteral(resourceName: "icon-item2-selected"))
        vc2.tabBarItem.tag = 1
        
        vc3.tabBarItem = UITabBarItem(title: "Settings", image: #imageLiteral(resourceName: "icon-item3") ,
                                      selectedImage: #imageLiteral(resourceName: "icon-item3-selected"))
        vc3.tabBarItem.tag = 2
        
        viewControllers = [vc1, vc2, vc3]
        
        // Do any additional setup after loading the view.
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        switch item.tag {
        case 0:
            print("tab 0")
            tabBar.tintColor = .red
        case 1:
            print("tab 1")
            self.tabBar.tintColor = .green
            (viewControllers![item.tag] as! ViewController2).lblTitle.text = self.name
        case 2:
            print("tab 2")
            self.tabBar.tintColor = .blue
        default:
            print("no tab")
        }
    }
    

}
