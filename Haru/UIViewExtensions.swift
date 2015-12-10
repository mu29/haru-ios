//
//  UIView+Fade.swift
//  Haru
//
//  Created by Sunwoo Park on 2015. 12. 9..
//  Copyright © 2015년 Pedaling. All rights reserved.
//

import UIKit

public extension UIView {
    
    /**
     Fade in a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeIn(duration duration: NSTimeInterval = 1.0, completion: ((value: Bool) -> Void)?) {
        UIView.animateWithDuration(duration, animations: {
            self.alpha = 1.0
        }, completion: {
            (value: Bool) in
            completion?(value: value)
        })
    }
    
    /**
     Fade out a view with a duration
     
     - parameter duration: custom animation duration
     */
    func fadeOut(duration duration: NSTimeInterval = 1.0, completion: ((value: Bool) -> Void)?) {
        UIView.animateWithDuration(duration, animations: {
            self.alpha = 0.0
        }, completion: {
            (value: Bool) in
            completion?(value: value)
        })
    }
    
}
