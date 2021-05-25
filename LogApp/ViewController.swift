//
//  ViewController.swift
//  LogApp
//
//  Created by user on 25/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    private var login: String!
    private var password: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.text = login
        passwordTextField.text = password
    }

    @IBAction func tappedLogInButton() {
        
        
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
    
}

