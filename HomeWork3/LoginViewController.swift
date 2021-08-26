//
//  ViewController.swift
//  HomeWork3
//
//  Created by Юрий Краснов on 25.08.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
  }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeUser = userNameTF.text
        
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
      
        userNameTF.text = ""
        passwordTF.text = ""

    }
    @IBAction func logInButtonPressed() {
        
        guard let logIn = userNameTF.text, !logIn.isEmpty else {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password")
            return
        }
        
    }
    
}

extension UIViewController{
     func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


