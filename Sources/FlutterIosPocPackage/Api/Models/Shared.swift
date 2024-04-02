//
//  Shared.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation

struct Account: Codable {
    let identifier: String?
}

struct Messages: Codable {
    let password: Password?
}

struct Password: Codable {
    let keepMeLoggedIn: Bool?
    let type: String?
    let text: String?
}

struct Href: Codable {
    let href: String?
}
