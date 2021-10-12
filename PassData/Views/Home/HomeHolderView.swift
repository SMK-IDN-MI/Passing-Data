//
//  HomeHolderView.swift
//  PassData
//
//  Created by BMG Macbook on 08/10/21.
//

import Foundation
import UIKit

class HomeHolderView {
    
    var navigationController: UINavigationController
    
    var nameStep: NameStep?
    var addressStep: AddressStep?
    var usernameStep: String?
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func showNameView() {
        let vc = NameVC()
        vc.completion = { nameStep in
            self.nameStep = nameStep
            self.showAddressView()
        }
        self.navigationController.pushViewController(vc, animated: true)
    }
    func showUsernameView() {
        let vc = UsernameVC()
        vc.completion = { username in
            self.usernameStep = username
            self.goToNextScreen()
        }
        self.navigationController.pushViewController(vc, animated: true)
    }
    func showAddressView() {
        let vc = AddressVC()
        vc.completion = { addressStep in
            self.addressStep = addressStep
            self.showUsernameView()
        }
        self.navigationController.pushViewController(vc, animated: true)
    }
    
    func goToNextScreen() {
        guard let usernameStep = usernameStep else { return }
        guard let addressStep = addressStep else { return }
        guard let nameStep = nameStep else { return }
        
        let user = User(name: nameStep.firstName,
                        lastName: nameStep.lastName,
                        username: usernameStep,
                        phoneNumber: addressStep.phoneNumber,
                        email: addressStep.email,
                        messages: [Message(sender: User(name: "test", lastName: "test", username: "test", phoneNumber: "test", email: "test", messages: [], connections: []), title: "test", body: "test", time: "test", date: "test")],
                        connections: [User(name: "test",
                                           lastName: "test",
                                           username: "test",
                                           phoneNumber: "test",
                                           email: "test@test.com",
                                           messages: [],
                                           connections: [])])
        
        // parse user anywhere.
        // It can be parsed to next screen or can be parsed to local database or cloud db.
        print(user)
    }
}
