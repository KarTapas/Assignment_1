//
//  ViewController.swift
//  LoginPageWithXIB
//
//  Created by Tapas Kumar Kar on 10/09/23.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotpassword: UIButton!
    
    override func loadView() {
        if let customView = Bundle.main.loadNibNamed("Login", owner: self, options: nil)?.first as? UIView {
            view = customView
        }
        setupUI()
    }
    
    private func setupUI() {
          loginButton.alpha = 0.5
          usernameTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
          passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
      }
    
    @IBAction private func loginButtonTapped(_ sender: UIButton) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        print("tapped  \(username) and \(password)")
       
        
    }
    @objc private func textFieldDidChange(_ textField: UITextField) {
            let usernameIsEmpty = usernameTextField.text?.isEmpty ?? true
            let passwordIsEmpty = passwordTextField.text?.isEmpty ?? true
            loginButton.alpha = (usernameIsEmpty || passwordIsEmpty) ? 0.5 : 1.0
            loginButton.isEnabled = !(usernameIsEmpty || passwordIsEmpty)
        }
    
}

