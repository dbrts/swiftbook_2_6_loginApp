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
    
    private let user = User.getUser()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(false)
    }

    @IBAction func loginButtonPressed() {
        guard usernameTF.text == user.username && passwordTF.text == user.password else {
            showAlert(
                withTitle: "Error",
                andMessage: "Wrong username or password",
                textField: passwordTF
            )
            return
        }
        
        performSegue(withIdentifier: "toLogin", sender: nil)
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Username", andMessage: "Your username is \(user.username)")
            : showAlert(withTitle: "Password", andMessage: "Your password is \(user.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
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

