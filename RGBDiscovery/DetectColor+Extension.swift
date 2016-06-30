//
//  DetectColor+Extension.swift
//  RGBDiscovery
//
//  Created by Bruno da Luz on 6/30/16.
//  Copyright © 2016 Bruno da Luz. All rights reserved.
//

import UIKit

extension UISlider {

    func number(value: CGFloat) -> Int {
        return Int(value * 255)
    }

    func hex<T: SignedIntegerType>(object: T) -> String {
        var result = ""
        var counter = object.toIntMax()
        for _ in 0..<sizeof(T)*2 {
            result = String(format: "%x", counter & 0xF) + result
            counter = counter >> 4
        }
        return result
    }
}
