//
//  UITextField+Extensions.swift
//  PassData
//
//  Created by BMG Macbook on 12/10/21.
//

import UIKit

extension UITextField {
    
    func paddingLeft(_ amount: CGFloat) {
        let fakeView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.leftView = fakeView
        self.leftViewMode = .always
    }
    
    func paddingRight(_ amount: CGFloat) {
        let fakeView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        self.rightView = fakeView
        self.leftViewMode = .always
    }
}
