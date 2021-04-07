//
//  ViewController.swift
//  apolisTest3
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnText: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var colorChanged: Bool = false

    @IBAction func changeColor(_ sender: UIButton) {
        if colorChanged == false{
            colorChanged = true
            btnText.setTitle("Click here to change background color to Green", for: .normal)
            view.backgroundColor = .red
        }else{
            colorChanged = false
            btnText.setTitle("Click here to change background color to Red", for: .normal)
            view.backgroundColor = .green
        }
    }
    
}

