//
//  SignUpViewController.swift
//  MySpar
//
//  Created by Элина Карапетян on 17.08.2023.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var delegate: MainPageViewControllerDelegate!
    private let signUpView: SignUpViewProtocol

    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.didLoad()
    }
    
    init(signUpView: SignUpViewProtocol) {
        self.signUpView = signUpView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = signUpView
    }
}

extension SignUpViewController: SignUpViewControllerDelegate{
    func closeBtnDidTap(){
        delegate.closeBtnDidTap()
    }
}
