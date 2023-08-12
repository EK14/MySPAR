//
//  MainPageViewController.swift
//  MySpar
//
//  Created by Элина Карапетян on 12.08.2023.
//

import UIKit

class MainPageViewController: UIViewController {
    
    private let mainPageView: MainPageViewProtocol
    
    override func loadView() {
        self.view = mainPageView as? UIView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainPageView.didLoad()
    }
    
    init(mainPageView: MainPageViewProtocol) {
        self.mainPageView = mainPageView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
