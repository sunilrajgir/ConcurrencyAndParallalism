//
//  ViewController.swift
//  Concurrency
//
//  Created by sunil.kumar1 on 1/24/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func BtnAction(_ sender: Any) {
        let a = ViewControllerA(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(a, animated: true)
    }
    

}

