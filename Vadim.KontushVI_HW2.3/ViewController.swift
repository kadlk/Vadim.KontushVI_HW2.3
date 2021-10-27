//
//  ViewController.swift
//  Vadim.KontushVI_HW2.3
//
//  Created by Vadim Kontush on 27.10.21.
//

import UIKit

class ViewController: UIViewController {

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
        if usernameTFOutlet.text != "hi" && passwordTFOutlet.text != "123"{
            showAlert(title: "Wrong login or pass", message: "Enter correct login or pass")
            return
                }
        
        performSegue(withIdentifier: "segueLoadWelcomeScreen", sender: self)}
    }

extension ViewController{
    public func showAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default){
            _ in self.usernameTFOutlet.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
    
    
    
    



