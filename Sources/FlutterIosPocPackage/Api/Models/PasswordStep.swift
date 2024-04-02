//
//  PasswordStep.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation

struct PasswordStep: Codable {
    let blocks: PasswordBlocks?
    let activeBlock: String?
    let messages: Messages?
    let formValues: String?
    let account: Account?
    let organization: String?
}

struct PasswordBlocks: Codable {
    let reset: Reset?
    let password: Password?
    let forgottenPasswordEmail: ForgottenPasswordEmail?
    let redirect: Href?
}

struct Reset: Codable {
    
}

struct ForgottenPasswordEmail: Codable {
    let target: String?
}
