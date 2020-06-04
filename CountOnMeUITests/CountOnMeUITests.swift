//
//  CountOnMeUITests.swift
//  CountOnMeUITests
//
//  Created by Laurent Debeaujon on 21/05/2020.
//  Copyright © 2020 Vincent Saluzzo. All rights reserved.
//

import XCTest
@testable import CountOnMe

class CountOnMeUITests: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testNumericButton() throws {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        app/*@START_MENU_TOKEN@*/.staticTexts["1"]/*[[".buttons[\"1\"].staticTexts[\"1\"]",".staticTexts[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["2"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["3"]/*[[".buttons[\"3\"].staticTexts[\"3\"]",".staticTexts[\"3\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["+"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["6"]/*[[".buttons[\"6\"].staticTexts[\"6\"]",".staticTexts[\"6\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["="]/*[[".buttons[\"=\"].staticTexts[\"=\"]",".staticTexts[\"=\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        //XCTAssertEqual(formulaTxt, "12 + 12 = 24")
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testGivenDivisionBy0_whenTappedEqual_ThenPopUpErrorAppear() throws {
            
        let app = XCUIApplication()
        let button = app.buttons["1"]
        button.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["2"]/*[[".buttons[\"2\"].staticTexts[\"2\"]",".staticTexts[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["/"].tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["0"]/*[[".buttons[\"0\"].staticTexts[\"0\"]",".staticTexts[\"0\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let staticText = app/*@START_MENU_TOKEN@*/.staticTexts["="]/*[[".buttons[\"=\"].staticTexts[\"=\"]",".staticTexts[\"=\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        staticText.tap()
        
        app.alerts["Erreur "].scrollViews.otherElements.buttons["OK"].tap()
        
        app/*@START_MENU_TOKEN@*/.staticTexts["C"]/*[[".buttons[\"C\"].staticTexts[\"C\"]",".staticTexts[\"C\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        button.tap()
        staticText.tap()
        
    }
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}