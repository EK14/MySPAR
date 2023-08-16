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
    func changeCollectionViewState()
}

class MainPageView: UIView {
    
    private let sections = MockData.shared.pageData
    
    weak var delegate: MainPageViewControllerDelegate?
    private var collectionView: UICollectionView!
    private var btn = LocationButton(frame: CGRect(x: (UIScreen.main.bounds.width-350)/2, y: 60, width: 350, height: 40))
    private var collectionViewState = false
    
    private func setupLocButton(){
        btn.addTarget(self, action: #selector(buttonDidTouched), for: .touchUpInside)
        addSubview(btn)
        btn.configure(with: LocationButtonModel(text: "Москва", img: UIImage(named: "location")))
    }
    
    private func setupCollectionView(){
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.dataSource = delegate
        collectionView.delegate = delegate
        collectionView.register(StoryCollectionViewCell.self, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        collectionView.register(PromotionsCollectionViewCell.self, forCellWithReuseIdentifier: "PromotionsCollectionViewCell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isPagingEnabled = false
        let topBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 0.5)
        topBorder.backgroundColor = UIColor.gray.cgColor
        collectionView.layer.addSublayer(topBorder)
        DispatchQueue.main.async {
            self.collectionView.scrollToItem(
                at: IndexPath(item: 50, section: 1),
                at: .centeredHorizontally,
                animated: false
            )
        }
        collectionView.isPagingEnabled = true
        self.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: btn.bottomAnchor, constant: 5),
            collectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            collectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout { [weak self] sectionIndex, layoutEnvironment in
            guard let self = self else {return nil}
            let section = sections[sectionIndex]
            switch section {
            case .stories:
                return setupSection(.init(widthDimension: .fractionalWidth(0.23), heightDimension: .absolute(90)), .init(top: 10, leading: 5, bottom: 5, trailing: 5), 0, .continuous)
            case .promotions:
                return setupSection(.init(widthDimension: .absolute(UIScreen.main.bounds.width - 45), heightDimension: .fractionalHeight(0.25)), .init(top: 5, leading: 5, bottom: 5, trailing: 5), 10, .groupPagingCentered)
            case .selection:
                return nil
            case .recommend:
                return nil
            case .sweetMood:
                return nil
            }
        }
    }
    
    private func setupSection(_ collectionLayoutSize: NSCollectionLayoutSize,_ contentInsets: NSDirectionalEdgeInsets,_ interGroupSpacing: CGFloat,_ orthogonalScrollingBehavior: UICollectionLayoutSectionOrthogonalScrollingBehavior) -> NSCollectionLayoutSection{
        
        let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: collectionLayoutSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        
        section.orthogonalScrollingBehavior = orthogonalScrollingBehavior
        section.contentInsets = contentInsets
        section.interGroupSpacing = interGroupSpacing
        return section
    }
    
    @objc func buttonDidTouched(){
        delegate?.locationBtnDidTap()
        changeCollectionViewState()
    }

}

extension MainPageView: MainPageViewProtocol{
    func didLoad() {
        backgroundColor = .white
        setupLocButton()
        setupCollectionView()
    }
    
    func setBtnTitle(title: String) {
        btn.label.text = title
    }
    
    func changeCollectionViewState(){
        if collectionViewState{
            collectionView.isHidden = false
        }
        else{
            collectionView.isHidden = true
        }
        collectionViewState.toggle()
    }
}
