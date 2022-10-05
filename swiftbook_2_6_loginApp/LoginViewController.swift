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

    @IBAction func loginButtonPressed() {
        guard usernameTF.text == "log" && passwordTF.text == "pass" else {
            showAlert(withTitle: "Error", andMessage: "Wrong username or password")
            passwordTF.text = ""
            return
        }
        
        performSegue(withIdentifier: "toLogin", sender: self)
    }
    
    @IBAction func forgotUserPressed() {
        showAlert(withTitle: "Username", andMessage: "Your username is log")
    }
    
    @IBAction func forgotPassPressed() {
        showAlert(withTitle: "Password", andMessage: "Your password is pass")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLogin" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.username = usernameTF.text ?? "user"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(false)
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

