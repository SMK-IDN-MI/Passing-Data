//
//  Reusable.swift
//  PassData
//
//  Created by BMG Macbook on 08/10/21.
//

import UIKit

struct Reusable {
    public static func createTextField(_ placeholder: String = "") -> UITextField {
        let field = UITextField()
        field.borderStyle = .roundedRect
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.placeholder = placeholder
        field.returnKeyType = .continue
        field.keyboardType = .default
        field.translatesAutoresizingMaskIntoConstraints = false
        
//        field.paddingLeft(10)
//        field.paddingRight(10)
        
        return field
    }
    public static func createButton(_ title: String) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    public static func createImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }
}
