//
//  Constraint.swift
//  PassData
//
//  Created by BMG Macbook on 08/10/21.
//

import UIKit

extension UIView {
    
    @discardableResult
    func toLeft(to destination: NSLayoutXAxisAnchor, space: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = leftAnchor.constraint(equalTo: destination, constant: space)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    func toRight(to destination: NSLayoutXAxisAnchor, space: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = rightAnchor.constraint(equalTo: destination, constant: -space)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    func toTop(to destination: NSLayoutYAxisAnchor, space: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = topAnchor.constraint(equalTo: destination, constant: space)
        constraint.isActive = true
        return constraint
    }
    
    @discardableResult
    func toBottom(to destination: NSLayoutYAxisAnchor, space: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = bottomAnchor.constraint(equalTo: destination, constant: -space)
        constraint.isActive = true
        return constraint
    }
    
}
