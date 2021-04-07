//
//  ViewController.swift
//  apolisTest2
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToEnglish(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "EnglishViewController")
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToMath(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "MathViewController") 
        navigationController?.pushViewController(vc, animated: true)
    }
}

