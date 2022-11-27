//
//  SpockViewController.swift
//  Closure
//
//  Created by Daniel Lima on 17/02/21.
//  Copyright © 2021 Daniel Lima. All rights reserved.
//

import UIKit

class SpockViewController: UIViewController {
    
    var service = Service()
    var scanAccuracity = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        doLogigalTasks()
    }
    
    func doLogigalTasks() {
        service.requestCaptainPermission { [weak self] error in
            if error != nil {
                return
            }

            self?.performSolarSystemScan(accuracity: self?.scanAccuracity)
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                self?.generateUSSEnterprisePGN()
            }
            self?.showResultOnScreen(with: .red, after: 2)
            self?.vulcanSalute()
        }
    }
    
    func vulcanSalute() {
        print("Live long and prosper 🖖")
    }
    
    deinit {
        print("SpockViewController está sendo desalocada")
    }

}
