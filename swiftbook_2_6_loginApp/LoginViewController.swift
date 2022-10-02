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
        if usernameTF.text ?? "" == "log" && passwordTF.text ?? "" == "pass" {
            performSegue(withIdentifier: "toLogin", sender: self)
        } else {
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLogin" {
            if let destination = segue.destination as? WelcomeViewController{
                destination.user = usernameTF.text!
              }
        }
    }
    
}

