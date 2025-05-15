//
//  TabBarController.swift
//  nbcampBookSearch
//
//  Created by LCH on 5/14/25.
//

import UIKit
import SnapKit

final class TabBarController: UITabBarController {
    
    private let mainVC = MainViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    private func setTabBar() {
     
        mainVC.tabBarItem = UITabBarItem(
            title: "검색탭",
            image: UIImage(systemName: "magnifyingglass"),
            tag: 0
        )
        
        viewControllers = [mainVC]
    }
}
