//
//  AuthController.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import UIKit
import Foundation
import WebKit

@available(iOS 13.0, *)
public class UIController:UIViewController, ObservableObject, WKNavigationDelegate {
    @Published var activeBlock: String?
    let apiManager = APIManager()
    
    
    @Sendable func getInit() {
        apiManager.fetchInit { result in
            switch result {
                case .success(let resource):
                    self.activeBlock = resource.activeBlock
                    print(resource)
                case .failure(let error):
                    print("Error fetching resource:", error)
            }
        }
    }
    
    @Sendable func postIdentifier(parameters: [String: Any]) {
        apiManager.postIdentifier(parameters: parameters) { result in
            switch result {
                case .success(let resource):
                    self.activeBlock = resource.activeBlock
                    print(resource)
                case .failure(let error):
                    print("Error fetching resource:", error)
            }
        }
    }
    
    @Sendable func postPassword(parameters: [String: Any]) {
        apiManager.postPassword(parameters: parameters) { result in
            switch result {
                case .success(let resource):
                    self.activeBlock = resource.activeBlock
                    print(resource)
                case .failure(let error):
                    print("Error fetching resource:", error)
            }
        }
    }
}
