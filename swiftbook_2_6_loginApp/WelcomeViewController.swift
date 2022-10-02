//
//  WelcomeViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(username ?? "user")!"
    }

    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
    
}
