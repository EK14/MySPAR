//
//  DropDownMenuView.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import UIKit

protocol DropDownMenuViewProtocol: UIView{
    func didLoad()
}

class DropDownMenuView: UIView {

    lazy var table = UITableView(frame: .zero, style: .plain)
    weak var delegate: DropDownMenuViewControllerDelegate?
    private let cancelBtn: UIButton = {
        let btn = UIButton()
        btn.layer.cornerRadius = 25
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.gray.cgColor
        btn.backgroundColor = .white
        btn.setTitle("Отмена", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.clipsToBounds = true
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        btn.layer.shadowOffset = CGSize(width: 0, height: 3)
        btn.layer.shadowOpacity = 1.0
        btn.layer.shadowRadius = 0
        btn.layer.masksToBounds = false
        return btn
    }()
    
    @objc
    private func cancelBtnDidTap(){
        delegate?.cancelBtnDidTap()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTable(){
        self.addSubview(table)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.delegate = delegate
        table.dataSource = delegate
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.showsVerticalScrollIndicator = false
        NSLayoutConstraint.activate([
            table.topAnchor.constraint(equalTo: self.topAnchor),
            table.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            table.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            table.heightAnchor.constraint(equalToConstant: self.frame.size.height * 2/3 )
        ])
    }
    
    private func setUpCancelButton(){
        self.addSubview(cancelBtn)
        cancelBtn.addTarget(self, action: #selector(cancelBtnDidTap), for: .touchUpInside)
        NSLayoutConstraint.activate([
            cancelBtn.topAnchor.constraint(equalTo: table.bottomAnchor, constant: 20),
            cancelBtn.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            cancelBtn.widthAnchor.constraint(equalToConstant: 300),
            cancelBtn.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}

extension DropDownMenuView: DropDownMenuViewProtocol{
    func didLoad() {
//        self.backgroundColor = .yellow
        setupTable()
        setUpCancelButton()
    }
}
