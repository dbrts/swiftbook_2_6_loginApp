//
//  BioViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var divisionLabel: UILabel!
    @IBOutlet var occupationLabel: UILabel!
    @IBOutlet var navBar: UINavigationItem!
    
    let person = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = person.name
        surnameLabel.text = person.surname
        companyLabel.text = person.company
        divisionLabel.text = person.division
        occupationLabel.text = person.occupation
        navBar.title = "\(person.name) \(person.surname)"
    }

}
