//
//  JenkinsIOSTests.swift
//  JenkinsIOSTests
//
//  Created by Ghulam Mujtaba on 10/11/2021.
//

import XCTest
@testable import JenkinsIOS

class JenkinsIOSTests: XCTestCase {

    var vc: ViewController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        try super.setUpWithError()
        vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? ViewController
        vc.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        vc = nil
        try super.tearDownWithError()
    }

    func testInitilization() throws {
        XCTAssertNotNil(vc, "Failed to initilize view controller")
    }
    
    func testJenkinsOutletConnections() throws {
        XCTAssertNotNil(vc.jenkinSwitch, "Jenkins status switch not connected")
        XCTAssertNotNil(vc.lblJenkinStatus, "Jenkins status label is not connected")
    }
    
    func testJenkinsStatus() throws {
        let status = vc.jenkinSwitch.isOn ? "Enabled" : "Disabled"
        let statusDisplayValue = vc.lblJenkinStatus.text ?? ""
        
        XCTAssertEqual(statusDisplayValue, status, "Status doesn't !atch selection value")
    }
    
}
