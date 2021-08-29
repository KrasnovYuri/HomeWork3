//
//  ViewController.swift
//  HomeWork3
//
//  Created by Юрий Краснов on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: Private properties
    private let user = "User"
    private let password = "Password"
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = user
    }
    
    //MARK: IBAction
    @IBAction func logInButtonPressed() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(
                title: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
            passwordTF.text = ""
        }
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", and: "Your name is \(user)" )
            : showAlert(title: "Oops!", and: "Your password is \(password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
        
    }
}

// MARK: - Private Methods
extension UIViewController{
    func showAlert(title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


