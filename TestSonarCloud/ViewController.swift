//
//  ViewController.swift
//  TestSonarCloud
//
//  Created by Cassie on 2020/2/24.
//  Copyright © 2020 Cassie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let person = Person.init()
        ageLabel.text = String(person.age) + " \(self.testGetTemperature())"
        nameLabel.text = person.name + self.testGetName()
        descLabel.text = person.sayhBye()
    }
    
    func testGetTemperature() -> Int {
        return Int.random(in: 0..<40)
    }
    
    func testUnused() -> Int {
           return Int.random(in: 0..<40)
       }
    
    func testGetName() -> String {
        return "Cassie"
    }
    

}

