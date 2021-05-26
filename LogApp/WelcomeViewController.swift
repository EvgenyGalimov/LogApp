//
//  WelcomeScreen.swift
//  LogApp
//
//  Created by user on 26/05/2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    weak var loginVC: ViewController?
    var loginName: String?
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let loginName = loginName {
            userNameLabel.text = "Welcome, \(loginName)!"
        } else {
            userNameLabel.text = "Welcome, noName!"
        }
    }
    @IBAction func tappedLogOutButton() {
        loginVC?.clear()
        dismiss(animated: true)
    }
}
