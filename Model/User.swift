//
//  User.swift
//  Songtracks
//
//  Created by Kara Lee on 12/3/23.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let name: String
    let email: String
}

extension User {
    static var MOCK_USER = User(id: NSUUID().uuidString, name: "Testing 123", email: "testing@gmail.com")
}

