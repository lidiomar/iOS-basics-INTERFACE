//
//  FirstViewController.swift
//  NavigationViewController
//
//  Created by Lidiomar Fernando dos Santos Machado on 06/12/20.
//

import UIKit

class FirstViewController: UIViewController {
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTitle()
        setupView()
    }
    
    private func setTitle() {
        self.title = "First"
    }
    
    private func setupView() {
        view.backgroundColor = .brown
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.setTitle("Click me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        view.addSubview(button)
        
        setUpToolbar()
    }
    
    func setUpToolbar(){

        var toolBarItems = [UIBarButtonItem]()

        let systemButton1 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.play, target: nil, action: nil)
        toolBarItems.append(systemButton1)

        let systemButton2 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        toolBarItems.append(systemButton2)

        let systemButton3 = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.trash, target: nil, action: nil)
        toolBarItems.append(systemButton3)

        self.setToolbarItems(toolBarItems, animated: true)
        navigationController?.isToolbarHidden = false
    }
    
    @objc private func didTapButton() {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    @objc private func dismissSelf() {
        navigationController?.popViewController(animated: true)
    }
}
