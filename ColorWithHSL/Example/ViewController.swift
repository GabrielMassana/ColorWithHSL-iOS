//
//  ViewController.swift
//  ColorWithHSL
//
//  Created by GabrielMassana on 02/04/2016.
//  Copyright © 2016 GabrielMassana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let black: UIColor = UIColor.colorWithHSL(hue: 0, saturation: 0, lightness: 0)
        let white: UIColor = UIColor.colorWithHSL(hue: 0, saturation: 0, lightness: 1)
        let red: UIColor = UIColor.colorWithHSL(hue: 0, saturation: 1, lightness: 0.5)
        let green: UIColor = UIColor.colorWithHSL(hue: 120, saturation: 1, lightness: 0.5)
        let blue: UIColor = UIColor.colorWithHSL(hue: 240, saturation: 1, lightness: 0.5)
        
        print("black", black)
        print("white", white)
        print("red", red)
        print("green", green)
        print("blue", blue)
    }
}

