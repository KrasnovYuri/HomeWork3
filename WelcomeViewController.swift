//
//  WelcomeViewController.swift
//  HomeWork3
//
//  Created by Юрий Краснов on 25.08.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    var welcomeUser: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeUserLabel.text = welcomeUser

    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
}
