# ColorWithHSL-iOS

[![Version](https://img.shields.io/cocoapods/v/ColorWithHSL.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHSL)
[![License](https://img.shields.io/cocoapods/l/ColorWithHSL.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHSL)
[![Platform](https://img.shields.io/cocoapods/p/ColorWithHSL.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHSL)
[![CocoaPods](https://img.shields.io/cocoapods/metrics/doc-percent/ColorWithHSL.svg?style=flat-square)](http://cocoapods.org/pods/ColorWithHSL)
[![Build Status](https://img.shields.io/travis/GabrielMassana/ColorWithHSL-iOS/master.svg?style=flat-square)](https://travis-ci.org/GabrielMassana/ColorWithHSL-iOS)

##   What is it?

Swift Extension to convert a HSL colour values into a UIColor Objects.

HSL stands for hue, saturation, and lightness, and is also often called HLS.

Formula from [Wikipedia](https://en.wikipedia.org/wiki/HSL_and_HSV#From_HSL).

## Installation

#### Podfile

```ruby
platform :ios, '8.0'
use_frameworks!

pod 'ColorWithHSL', '~> 0.0'
```

Then, run the following command:

```bash
$ pod install
```

#### Old school

Drag into your project the folder `/ColorWithHSL-iOS`. That's all.

## Example Swift

```swift
        let black: UIColor = UIColor.colorWithHSL(hue: 0.0, saturation: 0.0, lightness: 0.0)
        let white: UIColor = UIColor.colorWithHSL(hue: 0.0, saturation: 0.0, lightness: 1.0)
        let red: UIColor = UIColor.colorWithHSL(hue: 0.0, saturation: 1.0, lightness: 0.5)
        let green: UIColor = UIColor.colorWithHSL(hue: 120.0, saturation: 1.0, lightness: 0.5)
        let blue: UIColor = UIColor.colorWithHSL(hue: 240.0, saturation: 1.0, lightness: 0.5)
```
## Example Objective-C

```objc
#import "ColorWithHSL-Swift.h"

...
    UIColor *black = [UIColor hsl_colorWithHue:0.0 saturation:0.0 lightness:0.0];
    UIColor *white = [UIColor hsl_colorWithHue:0.0 saturation:0.0 lightness:1.0];
    UIColor *red = [UIColor hsl_colorWithHue:0.0 saturation:1.0 lightness:0.5];
    UIColor *green = [UIColor hsl_colorWithHue:120.0 saturation:1.0 lightness:0.5];
    UIColor *blue = [UIColor hsl_colorWithHue:240.0 saturation:1.0 lightness:0.5];
    
        
```
## License

ColorWithHSL-iOS is released under the MIT license. Please see the file called LICENSE.

## Versions

```bash
$ git tag -a 1.0.0 -m 'Version 1.0.0'

$ git push --tags
```

## Author

Gabriel Massana

##Found an issue?

Please open a [new Issue here](https://github.com/GabrielMassana/ColorWithHSL-iOS/issues/new) if you run into a problem specific to ColorWithHSL-iOS, have a feature request, or want to share a comment.
