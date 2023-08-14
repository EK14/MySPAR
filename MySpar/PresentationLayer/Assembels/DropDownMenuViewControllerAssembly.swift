//
//  DropDownMenuViewControllerAssembly.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import Foundation
import UIKit

struct DropDownMenuViewControllerAssembly{
    func create(frame: CGRect) -> DropDownMenuViewController{
        let dropDownMenuView = DropDownMenuView(frame: frame)

        let controller = DropDownMenuViewController(dropDownMenuView: dropDownMenuView)

        dropDownMenuView.delegate = controller

        return controller
    }
}
