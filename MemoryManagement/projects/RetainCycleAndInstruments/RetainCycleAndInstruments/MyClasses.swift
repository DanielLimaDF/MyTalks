//
//  MyClasses.swift
//  RetainCycleAndInstruments
//
//  Created by daniel.da.cunha.lima on 16/10/20.
//  Copyright © 2020 concrete. All rights reserved.
//

import Foundation

class Student {

    let name: String
    var macbook: MacBook?

    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }

    deinit {
        print("\(name) está sendo desalocado")
    }

}

class MacBook {

    let name: String
    var owner: Student? //TODO: - update reference

    init(name: String, owner: Student?) {
        self.name = name
        self.owner = owner
    }

    deinit {
        print("O Macbook \(name) está sendo desalocado")
    }

}
