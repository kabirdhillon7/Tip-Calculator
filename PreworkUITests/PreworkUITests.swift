//
//  PreworkUITests.swift
//  PreworkUITests
//
//  Created by Kabir Dhillon on 9/27/21.
//

import XCTest

class PreworkUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    /*
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    */

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let key = app/*@START_MENU_TOKEN@*/.keys["1"]/*[[".keyboards.keys[\"1\"]",".keys[\"1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertTrue(key.exists)
        key.tap()
        key.tap()
        key.tap()
        key.tap()
        
        let key2 = app/*@START_MENU_TOKEN@*/.keys["2"]/*[[".keyboards.keys[\"2\"]",".keys[\"2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key2.tap()
        key2.tap()
        
        let key3 = app/*@START_MENU_TOKEN@*/.keys["."]/*[[".keyboards.keys[\".\"]",".keys[\".\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key3.tap()
        key3.tap()
        
        let key4 = app/*@START_MENU_TOKEN@*/.keys["7"]/*[[".keyboards.keys[\"7\"]",".keys[\"7\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        key4.tap()
        key4.tap()
        app/*@START_MENU_TOKEN@*/.buttons["18%"]/*[[".segmentedControls.buttons[\"18%\"]",".buttons[\"18%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["20%"]/*[[".segmentedControls.buttons[\"20%\"]",".buttons[\"20%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        // Testing segment control buttons
        app/*@START_MENU_TOKEN@*/.buttons["15%"]/*[[".segmentedControls.buttons[\"15%\"]",".buttons[\"15%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["18%"]/*[[".segmentedControls.buttons[\"18%\"]",".buttons[\"18%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["20%"]/*[[".segmentedControls.buttons[\"20%\"]",".buttons[\"20%\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
                
                
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
