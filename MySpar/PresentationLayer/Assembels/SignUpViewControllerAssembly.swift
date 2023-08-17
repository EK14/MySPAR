//
//  SignUpViewControllerAssembly.swift
//  MySpar
//
//  Created by Элина Карапетян on 17.08.2023.
//

import Foundation
import UIKit

struct SignUpViewControllerAssembly{
    func create(frame: CGRect) -> SignUpViewController{
        let signUpView = SignUpView(frame: frame)

        let controller = SignUpViewController(signUpView: signUpView)

        signUpView.delegate = controller

        return controller
    }
}
