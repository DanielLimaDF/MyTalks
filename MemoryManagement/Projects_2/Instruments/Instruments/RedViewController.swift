//
//  RedViewController.swift
//  Instruments
//
//  Created by daniel.da.cunha.lima on 16/10/20.
//  Copyright © 2020 concrete. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow

        var daniel: Employee?
        var concrete: Company?

        daniel = Employee()
        concrete = Company()

        daniel?.company = concrete
        concrete?.employee = daniel

        daniel = nil
        concrete = nil
    }

    deinit {
        print("RedViewController is being dealocated")
    }

}

class Company {
    var employee: Employee?
}

class Employee {
    var company: Company?
}
