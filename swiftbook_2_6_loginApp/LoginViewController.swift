//
//  ViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 02.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func loginButtonPressed() {
        guard usernameTF.text == "log" else {
            showAlert(withTitle: "Error", andMessage: "Wrong username or password")
            return
        }
        guard passwordTF.text == "pass" else {
            showAlert(withTitle: "Error", andMessage: "Wrong username or password")
            return
        }
        
        performSegue(withIdentifier: "toLogin", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLogin" {
            if let welcomeVC = segue.destination as? WelcomeViewController {
                welcomeVC.username = usernameTF.text ?? "user"
            }
        }
    }
    
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

