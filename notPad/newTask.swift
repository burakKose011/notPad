//
//  newTask.swift
//  notPad
//
//  Created by macbook on 29.09.2024.
//

import UIKit

class newTask: UIViewController {
    
    @IBOutlet weak var baslikTextField: UITextField!
    @IBOutlet weak var metinTextField: UITextView!
    @IBOutlet weak var saveButon: UIButton!
    
    var alinanSifre = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        saveButon.layer.cornerRadius = 7
        
        if alinanSifre == 1 {
          //  saveButon.isHidden = true   // butonu saklar buton gözükmez
            saveButon.backgroundColor = .gray
            saveButon.isEnabled = false // üstüne tıklanamaz hale getirir
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        
    }
    

}
