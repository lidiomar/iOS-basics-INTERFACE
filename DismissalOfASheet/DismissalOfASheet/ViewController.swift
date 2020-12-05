//
//  ViewController.swift
//  DismissalOfASheet
//
//  Created by Lidiomar Fernando dos Santos Machado on 23/11/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var presentSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presentSwitch.isOn = false
    }

    @IBAction func showSecondViewController(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .formSheet
        secondViewController.modalTransitionStyle = .coverVertical
        secondViewController.isModalInPresentation = presentSwitch.isOn
        
        self.present(secondViewController, animated: true, completion: nil)
    }
    
}

