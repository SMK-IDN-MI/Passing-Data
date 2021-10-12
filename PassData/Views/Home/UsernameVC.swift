//
//  UsernameVC.swift
//  PassData
//
//  Created by Farras Doko on 12/10/21.
//

import UIKit

class UsernameVC: UIViewController {
    
    lazy var holderView: UIStackView = {
        let view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.spacing = 10
        view.distribution = .fillEqually
        view.alignment = .fill
        view.axis = .vertical
        return view
    }()
    lazy var logoImg: UIImageView = {
        let imageView = Reusable.createImageView()
        imageView.image = UIImage(named: "logo")
        return imageView
    }()
    lazy var usernameField: UITextField = {
        let field = Reusable.createTextField("Username")
        return field
    }()
    lazy var continueBtn: UIButton = {
        let btn = Reusable.createButton("Continue")
        return btn
    }()
    
    var completion: ((String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
        continueBtn.addTarget(self, action: #selector(continueClicked(_:)), for: .touchUpInside)
    }
    
    @objc func continueClicked(_ sender: UIButton) {
        let username = usernameField.text ?? ""
        completion?(username)
    }
    
    private func buildView() {
        view.backgroundColor = .white
        view.addSubview(holderView)
        view.addSubview(logoImg)
        
        holderView.addArrangedSubview(usernameField)
        holderView.addArrangedSubview(continueBtn)
        
        logoImg.toBottom(to: holderView.topAnchor, space: 15)
        logoImg.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoImg.widthAnchor.constraint(equalToConstant: 100).isActive = true
        logoImg.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        holderView.toLeft(to: view.leftAnchor, space: 50)
        holderView.toRight(to: view.rightAnchor, space: 50)
        holderView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}
