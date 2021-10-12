//
//  NameVC.swift
//  PassData
//
//  Created by BMG Macbook on 08/10/21.
//

import UIKit

// MARK: Public Model
struct NameStep {
    let firstName: String
    let lastName: String
}

//MARK: View Controller

class NameVC: UIViewController {
    
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
    lazy var firstNameField: UITextField = {
        let field = Reusable.createTextField("First Name")
        return field
    }()
    lazy var lastNameField: UITextField = {
        let field = Reusable.createTextField("Last Name")
        return field
    }()
    lazy var continueBtn: UIButton = {
        let btn = Reusable.createButton("Continue")
        return btn
    }()
    
    var completion: ((NameStep)->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
        continueBtn.addTarget(self, action: #selector(continueClicked(_:)), for: .touchUpInside)
    }
    
    @objc func continueClicked(_ sender: UIButton) {
        let firstName: String = firstNameField.text ?? ""
        let lastName: String = lastNameField.text ?? ""
        let nameStep = NameStep(firstName: firstName, lastName: lastName)
        completion?(nameStep)
    }
    
    private func buildView() {
        view.backgroundColor = .white
        view.addSubview(holderView)
        view.addSubview(logoImg)
        
        holderView.addArrangedSubview(firstNameField)
        holderView.addArrangedSubview(lastNameField)
        
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
