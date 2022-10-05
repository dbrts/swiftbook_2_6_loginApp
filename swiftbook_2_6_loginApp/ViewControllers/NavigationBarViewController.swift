//
//  NavigationViewController.swift
//  swiftbook_2_6_loginApp
//
//  Created by dobrets on 05.10.2022.
//

import UIKit

class NavigationBarViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//      На маленьких экранах не влезает шрифт
        if view.frame.size.width < 376.0 {
            navigationBar.largeTitleTextAttributes = [
                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 24)
            ]
        }
    }

}
