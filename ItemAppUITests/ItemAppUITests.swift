//
//  ItemAppUITests.swift
//  ItemAppUITests
//
//  Created by Terrance Griffith on 4/27/26.
//

import XCTest

final class ItemAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    @MainActor
//    func testExample() throws {
//        // UI tests must launch the application that they test.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        let app = XCUIApplication()
//        
//        app.launch()
//        let removeLastButton = app.buttons["deleteLastItem"]
//        removeLastButton.tap()
//        removeLastButton.tap()
//        
//        XCTAssertTrue(app/*@START_MENU_TOKEN@*/.staticTexts["second"]/*[[".otherElements.staticTexts[\"second\"]",".staticTexts[\"second\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
//        XCTAssertFalse(app.staticTexts["third"].exists)
//        
//        let predicate = NSPredicate(format: "identifier CONTAINS 'item.'")
//        let items = app.descendants(matching: .any).matching(predicate)
//        
//        XCTAssertTrue(items.count == 2, "Expecting 2 items shown")
//    }
//
//    @MainActor
//    func testLaunchPerformance() throws {
//        // This measures how long it takes to launch your application.
//        measure(metrics: [XCTApplicationLaunchMetric()]) {
//            XCUIApplication().launch()
//        }
//    }
}
