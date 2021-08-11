//
//  YellowViewController.swift
//  Instruments
//
//  Created by daniel.da.cunha.lima on 16/10/20.
//  Copyright © 2020 concrete. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }

    deinit {
        print("YellowViewController is being dealocated")
    }

}
