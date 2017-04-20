//
//  CustomTabBarController.swift
//  test02
//
//  Created by john john on 2017/4/12.
//  Copyright © 2017年 john john. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    override func viewDidLoad() {
        
        let navigationController = UINavigationController(rootViewController: busViewController())
        navigationController.title = "bus"
        navigationController.tabBarItem.image = UIImage(named: "bus-vehicle")
        
        
        let secondNavigationController = UINavigationController(rootViewController: trainViewController())
        secondNavigationController.title = "train"
        secondNavigationController.tabBarItem.image = UIImage(named: "train-public-transport")
        
        let thirdNavigationController = UINavigationController(rootViewController: bikeViewController())
        thirdNavigationController.title = "bike"
        thirdNavigationController.tabBarItem.image = UIImage(named: "man-on-motorbike-2")
        
        viewControllers = [navigationController, secondNavigationController, thirdNavigationController]
        super.viewDidLoad()
    }
}
