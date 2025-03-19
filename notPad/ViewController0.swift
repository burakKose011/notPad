//
//  ViewController0.swift
//  notPad
//
//  Created by macbook on 20.09.2024.
//

import UIKit

class ViewController0: UIViewController {
    
    @IBOutlet weak var signupImage: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        signupImage.layer.cornerRadius = 25
    }
    
    @IBAction func signUpButton(_ sender: Any) {
        
        performSegue(withIdentifier: "aktarim3", sender: nil)
        
    }
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        performSegue(withIdentifier: "aktarim2", sender: nil)
        
    }
    


}
