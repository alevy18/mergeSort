//
//  LoginViewController.swift
//  ToDoList
//
//  Created by Aaron Levy on 4/5/21.
//

import UIKit

class LoginViewController: BaseViewController{

    var lvm = LoginViewModel.init()
    
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameTF.delegate = self
        passwordTF.delegate = self
        
//        let tap = UITapGestureRecognizer.init(target: self, action: #selector(UIInputViewController.dismissKeyboard))
//        view.addGestureRecognizer(tap)
        
    }
   
    
    @IBAction func login(_ sender: UIButton) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: ViewControllerConstants.CListViewController)
        navigationController?.pushViewController(vc, animated: true)
    }
    
//    @objc func dismissKeyboard(){
//        view.endEditing(true)
//    }
    
}

extension LoginViewController: UITextFieldDelegate{
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        if textField.tag == 1{
            let userNameIsValid = lvm.isGreaterThanLimit(string: usernameTF.text!)
            if userNameIsValid == false{
                usernameTF.changeBorderColor(borderWidth: 5, color: UIColor.red)
            }else{
                usernameTF.removeBorder()
            }
            lvm.editUsername(changeTo: textField.text!)
        }else if textField.tag == 2{
            let passwordIsValid = lvm.isGreaterThanLimit(string: passwordTF.text!)
            if passwordIsValid == false{
                passwordTF.changeBorderColor(borderWidth: 5, color: UIColor.red)
            }else{
                passwordTF.removeBorder()
            }
            lvm.editPassword(changeTo: textField.text!)
        }
        
        
    }
}
