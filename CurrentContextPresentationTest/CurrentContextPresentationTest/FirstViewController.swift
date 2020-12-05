//
//  ViewController.swift
//  CurrentContextPresentationTest
//
//  Created by Lidiomar Fernando dos Santos Machado on 03/12/20.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func present(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let extraaViewController = storyboard.instantiateViewController(identifier: "ExtraaViewController")
        self.definesPresentationContext = true
        extraaViewController.modalPresentationStyle = .currentContext
        extraaViewController.modalTransitionStyle = .flipHorizontal
        self.present(extraaViewController, animated: true, completion: nil)
    }
    
}

