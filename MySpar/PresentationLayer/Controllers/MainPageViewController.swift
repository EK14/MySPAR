//
//  MainPageViewController.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    private let mainPageView: MainPageViewProtocol
    private var btnState = true
    private let vc = DropDownMenuViewControllerAssembly().create(frame: UIScreen.main.bounds)
    private let selectedCity: String
    
    init(mainPageView: MainPageViewProtocol) {
        self.mainPageView = mainPageView
        selectedCity = "Москва"
        super.init(nibName: nil, bundle: nil)
        vc.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        mainPageView.didLoad()
    }
    
    override func loadView() {
        view = mainPageView
    }
    
    private func dropDownMenuViewPopUp(currentYOrigin: CGFloat, changedYOrigin: CGFloat){
        self.view.insertSubview(vc.view, at: 1)
        vc.view.frame.origin = CGPoint(x: 0, y: currentYOrigin)
        UIView.animate(withDuration: 0.2) {
            self.vc.view.frame.origin = CGPoint(x: 0, y: changedYOrigin)
        }
        addChild(vc)
        btnState.toggle()
    }

}

extension MainPageViewController: MainPageViewControllerDelegate {
    func locationBtnDidTap() {
        if btnState{
            dropDownMenuViewPopUp(currentYOrigin: view.frame.height, changedYOrigin: 120)
        }
        else{
            dropDownMenuViewPopUp(currentYOrigin: 120, changedYOrigin: view.frame.height)
        }
    }
    
    func titleDidSelected(title: String) {
        mainPageView.setBtnTitle(title: title)
        dropDownMenuViewPopUp(currentYOrigin: 120, changedYOrigin: view.frame.height)
    }
    
    func cancelBtnDidTap() {
        dropDownMenuViewPopUp(currentYOrigin: 120, changedYOrigin: view.frame.height)
    }
}
