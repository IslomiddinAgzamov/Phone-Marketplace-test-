//
//  ViewController.swift
//  Phone Marketplace (test)
//
//  Created by Islomiddin on 08/12/22.
//

import UIKit
import NYKit

class MainController: NYViewController {
    
    let _view = MainView()
    
    override func loadView() {
        super.loadView()
        view = _view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }


}

