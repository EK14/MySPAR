//
//  DropDownMenuViewControllerDelegate.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import Foundation
import UIKit

protocol DropDownMenuViewControllerDelegate: AnyObject, UITableViewDelegate, UITableViewDataSource{
    func cancelBtnDidTap()
}
