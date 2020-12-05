//
//  SecondViewController.swift
//  DismissalOfASheet
//
//  Created by Lidiomar Fernando dos Santos Machado on 23/11/20.
//

import UIKit

class SecondViewController: UIViewController, UIAdaptivePresentationControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presentationController?.delegate = self
    }
    
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func presentationControllerDidAttemptToDismiss(_ presentationController: UIPresentationController) {
        
        let alertController = UIAlertController(title: "Error", message: "This view controller can not be dragged", preferredStyle: .alert)
        
        let alertAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alertController.addAction(alertAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
}
