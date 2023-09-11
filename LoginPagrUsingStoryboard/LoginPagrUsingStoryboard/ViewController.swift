//
//  ViewController.swift
//  LoginPagrUsingStoryboard
//
//  Created by Tapas Kumar Kar on 09/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var usernameTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    @IBOutlet private var loginButton: UIButton!
    @IBOutlet private var forgotpassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        loginButton.isEnabled = false
        loginButton.alpha = 0.8
        
        usernameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @IBAction private func loginButtonTapped(_ sender: UIButton) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
         print("Tappaed\(username) and \(password)")
        
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        let usernameIsEmpty = usernameTextField.text?.isEmpty ?? true
        let passwordIsEmpty = passwordTextField.text?.isEmpty ?? true
        loginButton.isEnabled = !(usernameIsEmpty || passwordIsEmpty)
        loginButton.alpha = loginButton.isEnabled ? 1.0 : 0.8
    }
}


