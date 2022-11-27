//
//  ViewController.swift
//  Closure
//
//  Created by Daniel Lima on 17/02/21.
//  Copyright © 2021 Daniel Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

class Service {
    func getUserData(completion: @escaping (Error?) -> ()) {
        
        guard let url = URL(string: "https://www.google.com") else { return }
        
        URLSession.shared.dataTask(with: url) { (_ , _, _) in
            completion(nil)
        }
    }
    
    func requestCaptainPermission(completion: @escaping (Error?) -> ()) {
        
        guard let url = URL(string: "https://www.google.com") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (_ , _, _) in
            completion(nil)
        }
        task.resume()
    }
}

extension SpockViewController {
    
    func showResultOnScreen(with backgroundColor: UIColor, after interval: TimeInterval) {
        print("finished processing")
    }
    
    func performSolarSystemScan(accuracity: Int?) {
        print("scanning solar system...")
    }
    
    func generateUSSEnterprisePGN() {
        print("generating png")
    }
    
}
