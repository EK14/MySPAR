//
//  StoryCollectionViewCell.swift
//  MySpar
//
//  Created by Элина Карапетян on 15.08.2023.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {
    
    private let img = UIImageView()
    private let title = UILabel()
    
    func setup(_ item: ListItem){
        img.image = nil
        title.text = nil
        
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: item.image)
        img.clipsToBounds = true
        img.layoutIfNeeded()
        
        title.text = item.title
        title.textColor = .black
        title.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        title.textAlignment = .center
        title.numberOfLines = 2
        title.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(img)
        contentView.addSubview(title)
        
        NSLayoutConstraint.activate([
            img.topAnchor.constraint(equalTo: contentView.topAnchor),
            img.heightAnchor.constraint(equalToConstant: 60),
            img.widthAnchor.constraint(equalToConstant: 60),
            img.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
//            img.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
//            img.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),

            title.topAnchor.constraint(equalTo: img.bottomAnchor),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            title.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}
