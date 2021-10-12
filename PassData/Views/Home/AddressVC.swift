//
//  AddressVC.swift
//  PassData
//
//  Created by Farras Doko on 12/10/21.
//

import UIKit

//MARK: Public Model
struct AddressStep {
    let email: String
    let phoneNumber: String
}

//MARK: View Controller
class AddressVC: UIViewController {
    
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
    lazy var phoneField: UITextField = {
        let field = Reusable.createTextField("Phone Number")
        return field
    }()
    lazy var emailField: UITextField = {
        let field = Reusable.createTextField("Email")
        return field
    }()
    lazy var continueBtn: UIButton = {
        let btn = Reusable.createButton("Continue")
        return btn
    }()
    
    var completion: ((AddressStep)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buildView()
        continueBtn.addTarget(self, action: #selector(continueClicked(_:)), for: .touchUpInside)
    }
    
    @objc func continueClicked(_ sender: UIButton) {
        let email: String = emailField.text ?? ""
        let phoneNumber = phoneField.text ?? ""
        let addressStep = AddressStep(email: email, phoneNumber: phoneNumber)
        completion?(addressStep)
    }
    
    private func buildView() {
        view.backgroundColor = .white
        view.addSubview(holderView)
        view.addSubview(logoImg)
        
        holderView.addArrangedSubview(phoneField)
        holderView.addArrangedSubview(emailField)
        
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
