//
//  GoodsCollectionViewCell.swift
//  MySpar
//
//  Created by Элина Карапетян on 15.08.2023.
//

import UIKit

class GoodsCollectionViewCell: UICollectionViewCell {
    
    private let img = UIImageView()
    private let label = UILabel()
    private let btn = UIButton()
    private let unitImg = UIImageView()
    var delegate: MainPageViewControllerDelegate!
    
    func setup(_ item: ListItem){
        self.img.image = nil
        self.label.text = nil
        self.unitImg.image = nil
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 20
        contentView.layer.shadowColor = UIColor.gray.cgColor
        contentView.layer.shadowOpacity = 0.2
        contentView.layer.shadowOffset = .zero
        contentView.layer.shadowRadius = 10
        
        img.image = UIImage(named: item.image)
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 25
        
        label.text = item.title
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .center
        
        unitImg.image = UIImage(named: item.unit ?? "")
        unitImg.contentMode = .scaleAspectFit
        
        btn.backgroundColor = AppColorEnum.greenColor.color
        btn.setImage(UIImage(systemName: "basket"), for: .normal)
        btn.layer.cornerRadius = 20
        btn.clipsToBounds = true
        btn.imageView?.tintColor = .white
        btn.addTarget(self, action: #selector(basketBtnDidTap), for: .touchUpInside)
        
        img.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        btn.translatesAutoresizingMaskIntoConstraints = false
        unitImg.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(img)
        contentView.addSubview(btn)
        contentView.addSubview(label)
        contentView.addSubview(unitImg)
        
        let widthConstraint = img.widthAnchor.constraint(equalToConstant: 80)
        widthConstraint.priority = UILayoutPriority(rawValue: 999)
        
        let heightConstraint = img.heightAnchor.constraint(equalToConstant: 120)
        heightConstraint.priority = UILayoutPriority(rawValue: 999)
        
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            widthConstraint,
            heightConstraint,
            img.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            img.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            
            btn.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 10),
            btn.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            btn.heightAnchor.constraint(equalToConstant: 40),
            btn.widthAnchor.constraint(equalToConstant: 40),
            btn.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            unitImg.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 5),
            unitImg.widthAnchor.constraint(equalToConstant: 15),
            unitImg.heightAnchor.constraint(equalToConstant: 15),
            unitImg.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 22),
            
            label.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 10),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
        ])
        
    }
    
    @objc
    private func basketBtnDidTap(){
        delegate.basketBtnDidTap()
    }
}
