//
//  Login.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import Foundation
import SwiftUI
import SafariServices


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
            SafariView(url: URL(string: "http://localhost:3000/index")!)
//           NativeWebView(url: URL(string: "http://localhost:3000/index")!, onClose: {
//                self.showWebView = false
//            })
        }
    }
}


@available(iOS 13.0, *)
struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        let safariVC = SFSafariViewController(url: url)
        return safariVC
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        // No updates needed
    }
}

