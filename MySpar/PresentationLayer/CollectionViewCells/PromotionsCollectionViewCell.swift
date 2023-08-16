//
//  PromotionsCollectionViewCell.swift
//  MySpar
//
//  Created by Элина Карапетян on 15.08.2023.
//

import UIKit

class PromotionsCollectionViewCell: UICollectionViewCell {
    
    private let img = UIImageView()
    
    override func prepareForReuse() {
        super.prepareForReuse()
        img.isHidden = true
    }
    
    func setup(_ item: ListItem){
        img.isHidden = false
        
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: item.image)
        img.clipsToBounds = true
        img.contentMode = .scaleAspectFit
        img.layer.cornerRadius = 25
        
        contentView.addSubview(img)
        
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: contentView.topAnchor),
            img.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            img.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 45),
            img.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
        ])
    }
}
