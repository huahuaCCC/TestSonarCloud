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

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
