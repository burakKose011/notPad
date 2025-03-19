//
//  ViewController2.swift
//  notPad
//
//  Created by macbook on 16.09.2024.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var loginImage: UIButton!
    @IBOutlet weak var UsernameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginImage.layer.cornerRadius = 25
        
    }
    

    @IBAction func login(_ sender: Any) {
        
    }
    

}
