//
//  MainPageView.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import UIKit

class MainPageView: UIView {
    private func setUpStyle(){
        
    }
}

extension MainPageView: MainPageViewProtocol{
    func didLoad() {
        setUpStyle()
        setUpLayout()
        setUp()
    }
}
