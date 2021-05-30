//
//  ViewController.swift
//  LogApp
//
//  Created by user on 25/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    @IBOutlet private weak var logInButton: UIButton!
    @IBOutlet private weak var forgotNameButton: UIButton!
    @IBOutlet private weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tappedForgotUser() {
        let alertUser = UIAlertController(title: "Oops!", message: "Your username is User 😃", preferredStyle: UIAlertController.Style.alert)
        
        alertUser.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertUser, animated: true, completion: nil)    }
    
    @IBAction func tappedForgotPassword() {
        let alertPassword = UIAlertController(title: "Oops!", message: "Your password is Password 😃", preferredStyle: UIAlertController.Style.alert)
        
        alertPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertPassword, animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "login" else {
            return super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
        }
        
        let login = loginTextField.text
        let password = passwordTextField.text
        
        if login == "User" && password == "Password" {
            return true
        } else {
            showLoginError()
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "login" else {
            return
        }
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.loginVC = self
            welcomeVC.loginName = loginTextField.text
        }
    }
    
    func clear() {
        loginTextField.text = nil
        passwordTextField.text = nil
    }
    
    private func showLoginError() {
        let alertEnter = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: UIAlertController.Style.alert)
        alertEnter.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertEnter, animated: true, completion: nil)
    }
}
