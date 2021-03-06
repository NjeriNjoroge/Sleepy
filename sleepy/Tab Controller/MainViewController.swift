//
//  MainViewController.swift
//  sleepy
//
//  Created by Grace Njoroge on 03/05/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
  
  let waterViewController = WaterViewController.init(collectionViewLayout: UICollectionViewFlowLayout())
  let meditationViewController = MeditationViewController.init(collectionViewLayout: UICollectionViewFlowLayout())


  override func viewDidLoad() {
    super.viewDidLoad()
    UITabBar.appearance().backgroundColor = .white
    
    waterViewController.tabBarItem = UITabBarItem(title: "Water", image: nil, tag: 0)
    
    meditationViewController.tabBarItem = UITabBarItem(title: "Zen", image: nil, tag: 1)
    
    viewControllers = [waterViewController, meditationViewController]
    
  }
  
  
}


//Color palette to use -> https://colorhunt.co/palette/42191
