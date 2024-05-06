//
//  CustomTabController.swift
//
//
//  Created by Tibor Kovacs on 06/05/2024.
//

import SwiftUI
import SafariServices

public class CustomTabController: UIViewController, SFSafariViewControllerDelegate {
   // let safariViewController = SFSafariViewController(url: URL(string: "https://thinkable-operation.surge.sh/")!)
    let safariViewController = SFSafariViewController(url: URL(string: "http://localhost:3000/index")!)
    
    public override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            // Present the SFSafariViewController here
        presentCustomTab()
    }
    
    @Sendable func presentCustomTab() {

     //  safariViewController.delegate = self
       present(safariViewController, animated: true, completion: nil)
   }

   public func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
       // Handle any necessary cleanup or actions after the custom tab is dismissed
   }
}

public struct CustomTabPresenter: UIViewControllerRepresentable {
    public func makeUIViewController(context: Context) -> CustomTabController {
        let controller = CustomTabController()
        // Additional setup if needed
        return controller
    }
    
    public func updateUIViewController(_ uiViewController: CustomTabController, context: Context) {
        // Update the view controller if needed
    }
}
