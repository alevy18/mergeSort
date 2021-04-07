//
//  ViewController.swift
//  apolisTest4
//
//  Created by Aaron Levy on 3/26/21.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressed(_ sender: UITapGestureRecognizer) {
        print("hello")
        let picker = UIImagePickerController.init()
        picker.sourceType = .photoLibrary
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
//    if type has camera available{
//        picker.sourceType. = .camera
//    }else{
//        picker.sourceType = .photoLibrary
//    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        image.image = info[.originalImage] as? UIImage
        dismiss(animated: true, completion: nil)
    }
}

