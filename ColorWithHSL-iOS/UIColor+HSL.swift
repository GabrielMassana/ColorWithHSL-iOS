//
//  UIColor+HSL.swift
//  ColorWithHSL
//
//  Created by GabrielMassana on 02/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//
//  https://en.wikipedia.org/wiki/HSL_and_HSV#From_HSL
//

import UIKit

public extension UIColor {
    
    //MARK: - Public method
    
    /**
    Creates UIColor object based on given HSL values.
    
    - parameter hue: CGFloat with the hue value. Hue value must be between 0 and 360.
    - parameter saturation: CGFloat with the saturation value. Saturation value must be between 0 and 1.
    - parameter lightness: CGFloat with the lightness value. Lightness value must be between 0 and 1.
    
    - returns: A UIColor from the given HSL values.
    */
    @objc(hsl_colorWithHue:saturation:lightness:)
    public class func colorWithHSL(hue hue: CGFloat, saturation: CGFloat, lightness: CGFloat) -> UIColor? {
        
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        
        guard hue <= 360 && hue >= 0.0 else { return nil }
        guard saturation <= 1.0 && saturation >= 0.0 else { return nil }
        guard lightness <= 1.0 && lightness >= 0.0 else { return nil }
        
        let chroma: CGFloat = (1 - abs((2 * lightness) - 1)) * saturation
        let h60: CGFloat = hue / 60.0
        let x: CGFloat = chroma * (1 - abs((h60 % 2) - 1))
        
        if (h60 < 1) {
            
            r = chroma
            g = x
        }
        else if (h60 < 2)
        {
            r = x
            g = chroma
        }
        else if (h60 < 3)
        {
            g = chroma
            b = x
        }
        else if (h60 < 4)
        {
            g = x
            b = chroma
        }
        else if (h60 < 5)
        {
            r = x
            b = chroma
        }
        else if (h60 < 6)
        {
            r = chroma
            b = x
        }
        
        let m: CGFloat = lightness - (chroma / 2)
        
        r = r + m
        g = g + m
        b = b + m
        
        return UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }
}