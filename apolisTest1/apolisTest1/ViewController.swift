//
//  ViewController.swift
//  apolisTest1
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Present(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "PresentViewController") as! PresentViewController
        present(vc, animated: true, completion: nil)
    }
    
    
    @IBAction func Push(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: "PushViewController") as! PushViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

