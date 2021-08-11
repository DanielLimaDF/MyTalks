//
//  RedViewController.swift
//  Closure
//
//  Created by Daniel Lima on 17/02/21.
//  Copyright © 2021 Daniel Lima. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    var service = Service()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }

    func loadData() {
        service.getUserData { error in
            if error != nil {
                return
            }
            
            self.alert()
            
        }
    }
    
    func alert() {
        print("RED ALERT!!!")
    }
    
    deinit {
        print("RedViewController está sendo desalocada")
    }

}
