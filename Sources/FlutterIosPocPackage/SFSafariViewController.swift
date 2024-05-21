//
//  File.swift
//  
//
//  Created by Tibor Kovacs on 21/05/2024.
//

import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    func openWebPage() {
        if let url = URL(string: "http://localhost:3000/index") {
            let safariVC = SFSafariViewController(url: url)
            safariVC.delegate = self
            self.present(safariVC, animated: true, completion: nil)
        }
    }

    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        // Handle the initial load completion
    }
}
