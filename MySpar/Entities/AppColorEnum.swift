//
//  AppColorEnum.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import Foundation
import UIKit

enum AppColorEnum {
    case backgroundColor
    case descriptionTextColor
    case greenColor

    var color: UIColor {
        switch self {
        case .backgroundColor:
            return UIColor(hex: 0xFFFFFF)
        case .descriptionTextColor:
            return UIColor(hex: 0x96959B)
        case .greenColor:
            return UIColor(hex: 0x0FB842)
        }
    }
}
