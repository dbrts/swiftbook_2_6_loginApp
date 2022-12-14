//
//  WelcomeViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 02.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    let person = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        welcomeLabel.text = "Welcome, \(person.name) \(person.surname)!"
    }
    
    private func setGradientBackground() {
        let colorTop = UIColor(red: 236.0/255.0, green: 110.0/255.0, blue: 173.0/255.0, alpha: 1.0).cgColor
        let colorBottom =  UIColor(red: 52.0/255.0, green: 148.0/255.0, blue: 230.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
                
        view.layer.insertSublayer(gradientLayer, at:0)
    }
    
}
