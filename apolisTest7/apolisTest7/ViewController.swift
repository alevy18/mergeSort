//
//  ViewController.swift
//  apolisTest7
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counter: UILabel!
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        counter.text = String(count)
//        UIButton.init(type: UIButton, primaryAction: #(countUp))
//        
    }


    @IBAction func countUp(_ sender: UIButton) {
        count += 1
        counter.text = String(count)
    }
}

