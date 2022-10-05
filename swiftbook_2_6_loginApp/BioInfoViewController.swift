//
//  BioInfoViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 05.10.2022.
//

import UIKit

class BioInfoViewController: UIViewController {

    @IBOutlet var navBar: UINavigationItem!
    @IBOutlet var bioLabel: UILabel!
    
    let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.title = "\(person.name) \(person.surname) bio"
        bioLabel.text = person.bio
    }

}
