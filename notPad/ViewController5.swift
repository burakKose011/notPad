//
//  ViewController5.swift
//  notPad
//
//  Created by macbook on 27.09.2024.
//

import UIKit

class ViewController5: UIViewController {
    
    
    @IBOutlet weak var backLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the
    }
    

    @IBAction func cikisButton(_ sender: Any) {
     performSegue(withIdentifier: "cikis", sender: nil)
    }

}
