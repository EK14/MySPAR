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
    private let sections = MockData.shared.pageData
    
    init(mainPageView: MainPageViewProtocol) {
        self.mainPageView = mainPageView
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
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        sections.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch sections[section]{
        case .stories:
            return sections[section].count
        case .promotions:
            return 100
        case .selection:
            return sections[section].count
        case .recommend:
            return sections[section].count
        case .sweetMood:
            return sections[section].count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch sections[indexPath.section] {
        case .stories(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .promotions(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PromotionsCollectionViewCell", for: indexPath) as! PromotionsCollectionViewCell
            cell.setup(items[indexPath.row % 20])
            return cell
        case .selection(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! SelectionCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .recommend(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! GoodsCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .sweetMood(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! GoodsCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        }
    }
    
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
        mainPageView.changeCollectionViewState()
    }
    
    func cancelBtnDidTap() {
        dropDownMenuViewPopUp(currentYOrigin: 120, changedYOrigin: view.frame.height)
        mainPageView.changeCollectionViewState()
    }
}
