//
//  ContentView.swift
//  flutter-ios-login-poc
//
//  Created by Tibor Kovacs on 31/03/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public struct ContentView: View {
    @ObservedObject var controller: UIController

    public init(controller: UIController) {
        self.controller = controller
    }
    
    public var body: some View {
        ScrollView {
            LoginView(controller: controller)
        }
        .padding(5)
    }
}



@available(iOS 13.0, *)
public struct Almafa: View {
    public init() {}
    
    public var body: some View {
        Text("Almafa from ios package")
        .padding(5)
    }
}
