//
//  SecondViewController.swift
//  NavigationViewController
//
//  Created by Lidiomar Fernando dos Santos Machado on 06/12/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupTitle()
    }
    
    private func setupTitle() {
        self.title = "Second"
    }
    
    private func setupView() {
        view.backgroundColor = .yellow
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Dismiss", style: .plain, target: self, action: #selector(dismissSelf))
    }
    
    @objc private func dismissSelf() {
        navigationController?.popViewController(animated: true)
    }
}
