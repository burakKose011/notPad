//
//  ViewController3.swift
//  notPad
//
//  Created by macbook on 18.09.2024.
//

import UIKit

class ViewController3: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var isimler = ["not1","not2","not3","not4","not5","not6","not7"]
    var secilenIsim = ""
    var tikla = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {      // istediğin ekran açıldığında onda koyar
    print("view did appear")

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addItem))
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
    @objc func addItem(){
        
        tikla = 0
        performSegue(withIdentifier: "aktarim4", sender: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isimler.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = isimler[indexPath.row]
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {  // soldan sağa çekince siler
        
        if editingStyle == .delete {
            
            isimler.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)  // fade kararma animasyonu
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        secilenIsim = isimler[indexPath.row]
        tikla = 1
        

        performSegue(withIdentifier: "aktarim4", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // ikinci ekrana veri aktarmak için fonksyon
        
        if segue.identifier ==  "aktarim4" {     // bu segue ye bastığında veri aktarır birden fazla butonu segue yapmışsak
            
            let destinationVC = segue.destination as! newTask
            destinationVC.alinanSifre = tikla
        }
    }
    
    

    
    
   


}
