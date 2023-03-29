//
//  TabBarViewController.swift
//  UnsplashPhotosChiangMai
//
//  Created by Bulat Kamalov on 16.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .label
        setupVCs()
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.navigationBar.backgroundColor = .blue
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: CollectionViewController(), title: NSLocalizedString("CollectionViewController", comment: ""), image: UIImage(systemName: "magnifyingglass")!),
            createNavController(for: CollectionViewController(), title: NSLocalizedString("TableViewController", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: CollectionViewController(), title: NSLocalizedString("Profile", comment: ""), image: UIImage(systemName: "person")!)
        ]
    }
    
}
