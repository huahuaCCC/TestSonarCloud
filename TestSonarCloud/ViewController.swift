//
//  ViewController.swift
//  TestSonarCloud
//
//  Created by Cassie on 2020/2/24.
//  Copyright © 2020 Cassie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if (1 > 2) {
            print("hello")
        } else {
            print("Bye")
        }
        let tmp = self.testGetTemperature()
        print(tmp)
    }
    
    func testUnusedCode() {
        print("unused")
    }
    
    func testGetTemperature() -> Int {
        return Int.random(in: -5..<40)
    }

}

