//
//  ViewController.swift
//  Vadim.KontushVI_HW2.3
//
//  Created by Vadim Kontush on 27.10.21.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTFOutlet: UITextField!
    @IBOutlet var passwordTFOutlet: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func forgotNameAction(_ sender: Any) {
        showAlert(title: "Hello", message: "Your user name: admin")
    }
    
    
    @IBAction func forgotPassAction(_ sender: Any) {
        showAlert(title: "Hello", message: "Your pass: 123")
    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        if usernameTFOutlet.text == "admin" && passwordTFOutlet.text == "123"{
            performSegue(withIdentifier: "segueLoadWelcomeScreen", sender: self)
            
        } else {
            showAlert(title: "Wrong login or pass", message: "Enter correct login or pass")
            return
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else{ return }
        welcomeVC.username = usernameTFOutlet.text
    }
    
    @IBAction func unwindToWelcomeVC(_ segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else{ return }
        usernameTFOutlet.text = welcomeVC.username
        passwordTFOutlet.text = welcomeVC.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}

extension LoginViewController{
    private func showAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){
            _ in self.passwordTFOutlet.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}








