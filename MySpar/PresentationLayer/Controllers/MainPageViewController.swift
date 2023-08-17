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
    private let dropDownMenuViewController = DropDownMenuViewControllerAssembly().create(frame: UIScreen.main.bounds)
    private let signUpViewController = SignUpViewControllerAssembly().create(frame: UIScreen.main.bounds)
    
    private let sections = MockData.shared.pageData
    
    init(mainPageView: MainPageViewProtocol) {
        self.mainPageView = mainPageView
        super.init(nibName: nil, bundle: nil)
        dropDownMenuViewController.delegate = self
        signUpViewController.delegate = self
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
    
    private func viewPopUp(VC: UIViewController, currentYOrigin: CGFloat, changedYOrigin: CGFloat){
        self.view.insertSubview(VC.view, at: 1)
        VC.view.frame.origin = CGPoint(x: 0, y: currentYOrigin)
        UIView.animate(withDuration: 0.3) {
            VC.view.frame.origin = CGPoint(x: 0, y: changedYOrigin)
        }
        addChild(VC)
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
        case .BBQWithABang:
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SelectionCollectionViewCell", for: indexPath) as! SelectionCollectionViewCell
            cell.setup(items[indexPath.row])
            return cell
        case .recommend(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoodsCollectionViewCell", for: indexPath) as! GoodsCollectionViewCell
            cell.delegate = self
            cell.setup(items[indexPath.row])
            return cell
        case .sweetMood(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoodsCollectionViewCell", for: indexPath) as! GoodsCollectionViewCell
            cell.delegate = self
            cell.setup(items[indexPath.row])
            return cell
        case .BBQWithABang(let items):
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GoodsCollectionViewCell", for: indexPath) as! GoodsCollectionViewCell
            cell.delegate = self
            cell.setup(items[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CollectionViewHeaderReusableView", for: indexPath) as! CollectionViewHeaderReusableView
            header.setup(sections[indexPath.section].title)
            return header
        default:
            return UICollectionReusableView()
        }
    }
    
    func locationBtnDidTap() {
        if btnState{
            viewPopUp(VC: dropDownMenuViewController, currentYOrigin: view.frame.height, changedYOrigin: 120)
        }
        else{
            viewPopUp(VC: dropDownMenuViewController, currentYOrigin: 120, changedYOrigin: view.frame.height)
        }
    }
    
    func titleDidSelected(title: String) {
        mainPageView.setBtnTitle(title: title)
        viewPopUp(VC: dropDownMenuViewController, currentYOrigin: 120, changedYOrigin: view.frame.height)
        mainPageView.changeCollectionViewState()
    }
    
    func cancelBtnDidTap() {
        viewPopUp(VC: dropDownMenuViewController, currentYOrigin: 120, changedYOrigin: view.frame.height)
        mainPageView.changeCollectionViewState()
    }
    
    func basketBtnDidTap(){
        mainPageView.basketBtnDidTap()
        navigationController?.tabBarController?.tabBar.isHidden = true
        viewPopUp(VC: signUpViewController, currentYOrigin: view.frame.height, changedYOrigin: 0)
    }
    
    func closeBtnDidTap(){
        viewPopUp(VC: signUpViewController, currentYOrigin: 120, changedYOrigin: view.frame.height)
        mainPageView.closeBtnDidTap()
        navigationController?.tabBarController?.tabBar.isHidden = false
    }
}
