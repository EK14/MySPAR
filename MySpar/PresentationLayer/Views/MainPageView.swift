//
//  MainPageView.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import UIKit

protocol MainPageViewProtocol: UIView{
    func didLoad()
    func setBtnTitle(title: String)
}

class MainPageView: UIView {
    
    weak var delegate: MainPageViewControllerDelegate?
    private var btn = LocationButton(frame: CGRect(x: (UIScreen.main.bounds.width-350)/2, y: 60, width: 350, height: 40))
    
    private func setupLocButton(){
        btn.addTarget(self, action: #selector(buttonDidTouched), for: .touchUpInside)
        addSubview(btn)
        btn.configure(with: LocationButtonModel(text: "Москва", img: UIImage(named: "location")))
    }
    
    @objc func buttonDidTouched(){
        delegate?.locationBtnDidTap()
    }


}

extension MainPageView: MainPageViewProtocol{
    func didLoad() {
        backgroundColor = .white
        setupLocButton()
    }
    
    func setBtnTitle(title: String) {
        btn.label.text = title
        
    }
}
