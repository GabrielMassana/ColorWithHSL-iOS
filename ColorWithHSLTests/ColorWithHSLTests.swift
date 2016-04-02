//
//  ColorWithHSLTests.swift
//  ColorWithHSLTests
//
//  Created by GabrielMassana on 02/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import XCTest

@testable import ColorWithHSL

class ColorWithHSLTests: XCTestCase {
    
    override func setUp() {
        
        super.setUp()

    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    //MARK: - Valid

    func test_colorWithHex_newObjectReturned() {
        
        let color = UIColor.colorWithHSL(hue: 0.0, saturation: 0.0, lightness: 0.0)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }

    func test_colorWithHex_newObjectReturned_outOfRangeValues() {
        
        let color = UIColor.colorWithHSL(hue: 361.0, saturation: 1.01, lightness: 1.01)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }
    
    //MARK: - SpecificColor
    
    func test_colorWithHex_red() {
        
        let redColor = UIColor.colorWithHSL(hue: 0.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(redColor, UIColor.redColor(), "A red Color object wasn't created");
    }
    
    func test_colorWithHex_green() {
        
        let greenColor = UIColor.colorWithHSL(hue: 120.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(greenColor, UIColor.greenColor(), "A green Color object wasn't created");
    }
    
    func test_colorWithHex_blue() {
        
        let blueColor = UIColor.colorWithHSL(hue: 240.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(blueColor, UIColor.blueColor(), "A blue Color object wasn't created");
    }
}
