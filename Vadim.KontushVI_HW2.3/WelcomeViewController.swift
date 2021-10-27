//
//  WelcomeViewController.swift
//  Vadim.KontushVI_HW2.3
//
//  Created by Vadim Kontush on 27.10.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var helloFieldOutlet: UILabel!
    
    var username: String!
    var password: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloFieldOutlet.text = "Hello, \(username!)"
        username = ""
        password = ""
    }
}
