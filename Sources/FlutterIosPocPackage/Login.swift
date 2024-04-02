//
//  Login.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation
import SwiftUI

@available(iOS 15.0, *)
public struct LoginView: View {
    @ObservedObject var controller: UIController
    @State private var email: String = ""
    @State private var password: String = ""

    public init(controller: UIController) {
        self.controller = controller
    }
    
    public var body: some View {
        if(controller.activeBlock == "identifier") {
            TextField("Enter your email address", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)
            
            Button("Continue") {
                controller.postIdentifier(parameters: ["identifier": email])
                self.email = ""
            }
        } else if(controller.activeBlock == "password") {
            SecureField("Enter your password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Continue") {
                controller.postPassword(parameters: ["password": password])
                self.password = ""
            }
        } else if(controller.activeBlock == "redirect") {
            Text("Redirecting...")
            Button("Back") {
                controller.activeBlock = "identifier"
            }
        }
        
        Text("")
            .task(controller.getInit)
    }
}
