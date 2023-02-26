//
//  ViewController.swift
//  calculadora
//
//  Created by Diogo Meneses de França on 22/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstValue: String?
    
    @IBOutlet var secondValue: String?
    
    var resultado: Int?
    
    func soma(){
        guard let num1 = firstValue,let num2 = secondValue else{
            return
        }
        resultado = (Int(num1) ?? 0) + (Int(num2) ?? 0)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

