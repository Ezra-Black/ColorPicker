//
//  Color.swift
//  ColorPicker
//
//  Created by Joseph Rogers on 11/21/19.
//  Copyright © 2019 Joseph Rogers. All rights reserved.
//

import UIKit

struct Color {
    static func getHueSaturation(at offset: CGPoint) -> (hue: CGFloat, saturation: CGFloat) {
        if offset == CGPoint.zero {
            return (hue: 0, saturation: 0)
        } else {
            let saturation = sqrt(offset.x * offset.x + offset.y * offset.y)
            
            var hue = acos(offset.x / saturation) / (2.0 * CGFloat.pi)
            
            if offset.y < 0 {
                hue = 1.0 - hue
            }
            
            return (hue: hue, saturation: saturation)
        }
    }
}

