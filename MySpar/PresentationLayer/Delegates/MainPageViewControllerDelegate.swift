//
//  MainPageViewControllerDelegate.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import Foundation
import UIKit

protocol MainPageViewControllerDelegate: AnyObject, UICollectionViewDataSource, UICollectionViewDelegate{
    func locationBtnDidTap()
    func titleDidSelected(title: String)
    func cancelBtnDidTap()
    func basketBtnDidTap()
    func closeBtnDidTap()
}
