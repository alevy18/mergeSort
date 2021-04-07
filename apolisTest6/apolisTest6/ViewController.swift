//
//  ViewController.swift
//  apolisTest6
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textFeld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textFeld.delegate = self
    }
    

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textFeld.text!.count >= 10{
            return false
        }
        return true
    }
    
}

