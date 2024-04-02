//
//  EmailStep.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation

struct EmailStep: Codable {
    let blocks: EmailBlocks?
    let activeBlock: String?
    let messages: [String: String]?
    let formValues: String?
    let account: Account?
    let organization: Organisation?
}

struct EmailBlocks: Codable {
    let identifier: EnabledIdentifiers?
}

struct EnabledIdentifiers: Codable {
    let enabledIdentifiers: [String]?
}

struct Organisation: Codable {
    let name: String?
}
