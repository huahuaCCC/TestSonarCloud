//
//  TestSonarCloudTests.swift
//  TestSonarCloudTests
//
//  Created by Cassie on 2020/2/24.
//  Copyright © 2020 Cassie. All rights reserved.
//

import XCTest
@testable import TestSonarCloud

class TestSonarCloudTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testVCCode() {
        let vc = ViewController.init()
        let degree = vc.testGetTemperature()
        XCTAssert(degree >= -5)
    }
    
    func testName() {
        let vc = ViewController.init()
        let name = vc.testGetName()
        XCTAssertNotNil(name)
    }
    
    func testPerson() {
        let per = Person.init()
        XCTAssertNotNil(per.name)
        XCTAssertNotNil(per.sayhBye())
    }
    
    func testDetail() {
        let vc2 = SecondViewController.init()
        XCTAssertNotNil(vc2.getBorderColor())
        XCTAssertNotNil(vc2.getAddress())
        XCTAssert(vc2.square(a: 10) > 10)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
