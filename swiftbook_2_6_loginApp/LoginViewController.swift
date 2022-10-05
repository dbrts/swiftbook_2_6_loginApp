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
    
    let username = "log"
    let password = "pass"

    @IBAction func loginButtonPressed() {
        guard usernameTF.text == username && passwordTF.text == password else {
            showAlert(
                withTitle: "Error",
                andMessage: "Wrong username or password",
                textField: passwordTF
            )
            return
        }
        
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    @IBAction func forgotUserPressed() {
        showAlert(withTitle: "Username", andMessage: "Your username is \(username)")
    }
    
    @IBAction func forgotPassPressed() {
        showAlert(withTitle: "Password", andMessage: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLogin" {
            guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
            welcomeVC.username = username
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(false)
    }
    
}

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message:String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

