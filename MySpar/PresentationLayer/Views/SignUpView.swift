//
//  SignUpView.swift
//  MySpar
//
//  Created by Элина Карапетян on 17.08.2023.
//

import UIKit

protocol SignUpViewProtocol: UIView{
    func didLoad()
}

class SignUpView: UIView {
    
    weak var delegate: SignUpViewControllerDelegate?
    private let title: UILabel = {
        let title = UILabel()
        title.text = "Войдите или зарегистрируйтесь,\nчтобы оформить покупку"
        title.textColor = AppColorEnum.gray.color
        title.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        title.textAlignment = .center
        title.numberOfLines = 0
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    private let signInBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .white
        btn.setTitle("Войти", for: .normal)
        btn.setTitleColor(AppColorEnum.greenColor.color, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        btn.titleLabel?.textAlignment = .center
        btn.layer.borderColor = AppColorEnum.greenColor.color.cgColor
        btn.layer.borderWidth = 2
        btn.layer.cornerRadius = 25
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let signUpBtn: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = AppColorEnum.greenColor.color
        btn.setTitle("Зарегистрироваться", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 25
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private let closeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(systemName: "xmark"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.contentVerticalAlignment = .fill
        btn.contentHorizontalAlignment = .fill
        btn.imageView?.contentMode = .scaleAspectFill
        btn.tintColor = .black
        btn.addTarget(self, action: #selector(closeBtnDidTap), for: .touchUpInside)
        return btn
    }()
    
    @objc
    private func closeBtnDidTap(){
        delegate?.closeBtnDidTap()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel(){
        self.addSubview(title)
        NSLayoutConstraint.activate([
            title.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -50),
            title.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            title.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10)
        ])
    }
    
    private func setupSignInBtn(){
        self.addSubview(signInBtn)
        NSLayoutConstraint.activate([
            signInBtn.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 10),
            signInBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            signInBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            signInBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupSignUpBtn(){
        self.addSubview(signUpBtn)
        NSLayoutConstraint.activate([
            signUpBtn.topAnchor.constraint(equalTo: signInBtn.bottomAnchor, constant: 10),
            signUpBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            signUpBtn.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            signUpBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func setupCloseBtn(){
        self.addSubview(closeBtn)
        NSLayoutConstraint.activate([
            closeBtn.widthAnchor.constraint(equalToConstant: 20),
            closeBtn.heightAnchor.constraint(equalToConstant: 20),
            closeBtn.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -30),
            closeBtn.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20)
        ])
    }
    
}

extension SignUpView: SignUpViewProtocol{
    func didLoad() {
        setupLabel()
        setupSignInBtn()
        setupSignUpBtn()
        setupCloseBtn()
    }
}
