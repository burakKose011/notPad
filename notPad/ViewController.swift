//
//  ViewController.swift
//  notPad
//
//  Created by macbook on 16.09.2024.
//

import UIKit

class ViewController: UIViewController {

    
    
    var timer = Timer() // timer zamanlama için kullanılır
    var kalanZaman = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        kalanZaman = 3
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    
      //  performSegue(withIdentifier: "aktarim1", sender: nil)
        
    }

    @objc func timerFonksiyonu() {
        kalanZaman = kalanZaman - 1
        
        if kalanZaman == 0 {
            timer.invalidate()  // süreyi durdurur bunu yapmazsak 0,-1,-2,-3 diye eksilmeye devam eder
            kalanZaman = 3  // bunu yapmazsak süre bitince tekrar başlatınca 0,-1 diye sayar o yüzden tekrar 3 e atama yaptık
            performSegue(withIdentifier: "aktarim1", sender: nil)
        }
    }

    
    
    
    
    
    
    
}

