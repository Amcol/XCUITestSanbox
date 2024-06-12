//
//  XCUITestSandboxUITests.swift
//  XCUITestSandboxUITests
//
//  Created by Amcol on 11.06.2024.
//

import XCTest

final class XCUITestSandboxUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()

    }

    override func tearDownWithError() throws {
    }

    func testToggle() throws {
        
        //GIVEN
        let app = XCUIApplication()
        let toggle = app.checkBoxes["Toggle"]
        
        //WHEN
        toggle.click()
        
        //THEN
        XCTAssertTrue(toggle.label.contains("Toggle State: On"), "Toggle state is not On")
    }
    
    func testShowTextButton() throws {
        let app = XCUIApplication()
        let showTestButton = app.buttons["ShowTextButton"]
        let helloWorldText = app.staticTexts["HelloWorldText"]
        
        showTestButton.click()
        
        XCTAssertTrue(helloWorldText.exists, "Text didn't appear")
    }
}
