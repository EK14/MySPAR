//
//  TabBarController.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
    }
    
    private func setTabBar(){
        self.tabBar.backgroundColor = .white
        let viewController = MainPageViewControllerAssembly().create()
        let mainPageVC = getViewController(viewController: viewController, title: "Главная", image: "tabBarImage", selectedImage: "tabBarSelectedImage", badge: nil)
        self.setViewControllers([mainPageVC], animated: false)
    }
    
    private func getViewController(viewController: UIViewController, title: String, image: String, selectedImage: String, badge: String?) -> UINavigationController {
        let VC = UINavigationController(rootViewController: viewController)
        VC.tabBarItem.image = UIImage(named: image)
        VC.tabBarItem.title = title
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor: AppColorEnum.greenColor.color], for: .normal)
        VC.tabBarItem.selectedImage = UIImage(named: selectedImage)
        VC.tabBarItem.badgeValue = badge
        VC.tabBarItem.badgeColor = .black
        return VC
    }

}

