//
//  ViewController.swift
//  TabBarControllerTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 04/12/20.
//

import UIKit

class ViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstViewController = FirstViewController()
        let secondViewController = SecondViewController()
        
        self.viewControllers = [firstViewController, secondViewController]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

