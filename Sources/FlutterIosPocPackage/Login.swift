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
    @State private var showWebView = false
    
    
    
    public init(controller: UIController) {
        self.controller = controller
    }
    
    public var body: some View {
        
        Button(action: {
            self.showWebView.toggle()
        }) {
            Text("Show WebView")
        }.sheet(isPresented: $showWebView) {
            NativeWebView(url: URL(string: "http://localhost:3000/index")!, onClose: {
                self.showWebView = false
            })
        }
    }
}

