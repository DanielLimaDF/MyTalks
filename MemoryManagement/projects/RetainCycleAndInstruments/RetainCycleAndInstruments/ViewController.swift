//
//  ViewController.swift
//  RetainCycleAndInstruments
//
//  Created by daniel.da.cunha.lima on 16/10/20.
//  Copyright © 2020 concrete. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var daniel: Student?
    var mac306: MacBook?

    init() {
        daniel = Student(name: "Daniel", macbook: nil)
        mac306 = MacBook(name: "Mac306", owner: nil)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        view = yellowView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //attributeProperties()
        removeReferences()
    }

    func attributeProperties() {
        //daniel?.macbook = mac306
        //mac306?.owner = daniel
    }

    func removeReferences(){
        mac306 = nil
        daniel = nil
    }

}

