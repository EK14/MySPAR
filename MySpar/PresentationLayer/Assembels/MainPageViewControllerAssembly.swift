//
//  MainPageViewControllerAssembly.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import Foundation
import UIKit

struct MainPageViewControllerAssembly {
    func create() -> MainPageViewController {
        let mainPageView = MainPageView()

        let controller = MainPageViewController(mainPageView: mainPageView)

        mainPageView.delegate = controller

        return controller
    }
}
