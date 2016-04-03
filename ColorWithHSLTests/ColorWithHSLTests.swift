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

    func test_colorWithHSL_newObjectReturned_minimum() {
        
        let color = UIColor.colorWithHSL(hue: 0.0, saturation: 0.0, lightness: 0.0)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }

    func test_colorWithHSL_newObjectReturned_maximum() {
        
        let color = UIColor.colorWithHSL(hue: 360.0, saturation: 1.0, lightness: 1.0)
        
        XCTAssertNotNil(color, "A valid Color object wasn't created");
    }
    
    //MARK: - NoValid
    
    func test_colorWithHSL_outOfRangeHue_over() {
        
        let color = UIColor.colorWithHSL(hue: 361.0, saturation: 0.5, lightness: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }

    func test_colorWithHSL_outOfRangeHue_under() {
        
        let color = UIColor.colorWithHSL(hue: -1.0, saturation: 0.5, lightness: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithHSL_outOfRangeSaturation_over() {
        
        let color = UIColor.colorWithHSL(hue: 180.0, saturation: 1.1, lightness: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithHSL_outOfRangeSaturation_under() {
        
        let color = UIColor.colorWithHSL(hue: 180.0, saturation: -0.1, lightness: 0.5)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithHSL_outOfRangeLightness_over() {
        
        let color = UIColor.colorWithHSL(hue: 180.0, saturation: 0.5, lightness: 1.1)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    func test_colorWithHSL_outOfRangeLightness_under() {
        
        let color = UIColor.colorWithHSL(hue: 180.0, saturation: 0.5, lightness: -0.1)
        
        XCTAssertNil(color, "A valid Color object was created");
    }
    
    //MARK: - SpecificColor
    
    func test_colorWithHSL_red() {
        
        let redColor = UIColor.colorWithHSL(hue: 0.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(redColor, UIColor.redColor(), "A red Color object wasn't created");
    }
    
    func test_colorWithHSL_green() {
        
        let greenColor = UIColor.colorWithHSL(hue: 120.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(greenColor, UIColor.greenColor(), "A green Color object wasn't created");
    }
    
    func test_colorWithHSL_blue() {
        
        let blueColor = UIColor.colorWithHSL(hue: 240.0, saturation: 1.0, lightness: 0.5)
        
        XCTAssertEqual(blueColor, UIColor.blueColor(), "A blue Color object wasn't created");
    }
}
