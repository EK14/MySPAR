//
//  CollectionViewHeaderReusableView.swift
//  MySpar
//
//  Created by Элина Карапетян on 16.08.2023.
//

import UIKit

class CollectionViewHeaderReusableView: UICollectionReusableView {
    
    private let title = UILabel()
    
    func setup(_ title: String){
        self.title.text = title
        self.title.textColor = .black
        self.title.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        self.title.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(self.title)
        
        NSLayoutConstraint.activate([
            self.title.topAnchor.constraint(equalTo: self.topAnchor),
            self.title.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.title.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.title.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
        
}
