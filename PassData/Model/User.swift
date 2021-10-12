//
//  User.swift
//  PassData
//
//  Created by BMG Macbook on 12/10/21.
//

import Foundation

struct User {
    let name: String
    let lastName: String
    let username: String
    let phoneNumber: String
    let email: String
    let messages: [Message]
    let connections: [User]
    
}

struct Message {
    let sender: User
    let title: String
    let body: String
    let time: String
    let date: String
}
