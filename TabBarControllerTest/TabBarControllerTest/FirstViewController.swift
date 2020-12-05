//
//  FirstViewController.swift
//  TabBarControllerTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 04/12/20.
//

import UIKit

class FirstViewController: UIViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.title = "First"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
    }
    
}
