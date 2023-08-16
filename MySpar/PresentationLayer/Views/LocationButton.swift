//
//  LocationButton.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import UIKit

struct LocationButtonModel{
    let text: String?
    let img: UIImage?
}

class LocationButton: UIButton {
    
    var label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.textAlignment = .left
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(iconImageView)
        addSubview(label)
        clipsToBounds = true
        layer.cornerRadius = 20
        layer.borderWidth = 0.5
        layer.borderColor = UIColor.gray.cgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with locationButtonModel: LocationButtonModel){
        label.text = locationButtonModel.text
        iconImageView.image = locationButtonModel.img
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        label.sizeToFit()
        let iconSize: CGFloat = 18
        let iconX: CGFloat = (10)
        iconImageView.frame = CGRect(x: iconX, y: (frame.size.height - iconSize) / 2, width: iconSize, height: iconSize)
        label.frame = CGRect(x: iconX + iconSize + 5, y: 0, width: self.frame.size.width - (iconX + iconSize + 5), height: frame.size.height)
    }
}
