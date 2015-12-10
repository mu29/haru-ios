//
//  CALayer+Additions.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 9..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit

extension CALayer {
    
    func setBorderColorFromUIColor(color:UIColor) {
        self.borderColor = color.CGColor
    }
}
