//
//  ViewController.swift
//  PageViewControllerExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 06/12/20.
//

import UIKit

class Pep: UIViewController {
    var boy = ""
    var pic = UIImageView(frame: CGRect(x: 200, y: 200, width: 200, height: 200))
    
    init(pepBoy pep: String) {
        self.boy = pep
        super.init(nibName: nil, bundle: nil)
        self.view.addSubview(pic)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pic.image = UIImage(named: self.boy.lowercased())
        
        switch boy {
        case "Moe":
            self.view.backgroundColor = .black
        case "Jack":
            self.view.backgroundColor = .red
        case "Manny":
            self.view.backgroundColor = .blue
        default:
            self.view.backgroundColor = .white
        }
        
    }


}

