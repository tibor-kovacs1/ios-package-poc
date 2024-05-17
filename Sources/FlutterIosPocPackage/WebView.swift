//
//  File.swift
//  
//
//  Created by Tibor Kovacs on 15/05/2024.
//

import SwiftUI
import WebKit

struct NativeWebView: UIViewRepresentable {
    let url: URL
    let onClose: () -> Void
    var initialFrame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 400) // Adjust as needed

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView(frame: .zero)
           webView.navigationDelegate = context.coordinator
        
           return webView
       }
       
       func updateUIView(_ uiView: WKWebView, context: Context) {
           let request = URLRequest(url: url)
           uiView.load(request)
       }
       
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
       
   class Coordinator: NSObject, WKNavigationDelegate {
       var parent: NativeWebView
             
         init(_ parent: NativeWebView) {
             self.parent = parent
         }
       
       func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction,
                    decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
           print("webView:\(webView) decidePolicyForNavigationAction:\(navigationAction) decisionHandler:\(decisionHandler)")

           guard let url = navigationAction.request.url else {
               decisionHandler(.cancel)
               return
           }
           
           // Check if the URL has a custom scheme
           if url.scheme == "login-poc" {
               print("Custom scheme detected: \(url)")
               self.parent.onClose()

               decisionHandler(.cancel)
               return
           }
           
           // Allow other URLs to load
           decisionHandler(.allow)
       }
   }
}
