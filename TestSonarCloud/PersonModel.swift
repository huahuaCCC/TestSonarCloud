//
//  PersonModel.swift
//  TestSonarCloud
//
//  Created by Cassie on 2020/2/27.
//  Copyright © 2020 Cassie. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let age: UInt
    let gender: String

    init() {
        self.name = "Katherine"
        self.age = UInt.random(in: 10..<60)
        self.gender = "Female"
    }
}

extension Person {
    func greet()  {
        print("Hello \(name)")
    }
    
    func sayhBye() -> String{
        return "Bye \(name)"
    }
}
