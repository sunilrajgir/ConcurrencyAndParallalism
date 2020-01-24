//
//  ViewControllerA.swift
//  Concurrency
//
//  Created by sunil.kumar1 on 1/24/20.
//  Copyright © 2020 sunil.kumar1. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController {
    var p : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let deadline = DispatchTime.now() + .seconds(10)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {  // self is stored by Dispatch Queue, self will remain in memory till get block called self != nil
                self.p = 10
        }
        
        DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
            //// self is not stored by Dispatch Queue, self will not remain in memory till get block called, self  == nil
            self?.p = 10
        }

    }
    
    


}
