//
//  ViewController.swift
//  calculator
//
//  Created by Aaron Levy on 3/23/21.
//

import UIKit

class ViewController: UIViewController {
   //label outlets
    @IBOutlet weak var equalsBar: UILabel!
    //var equalsBarText: String = ""

    //Calculator variables
    var num1: String?
    var num2: String?
    var sign: String?
    var result: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

//    enum Button {
//        case one, two, three, four, five, six, seven, eight, nine, zero, point
//    }
//
//    enum Oper {
//        case plus, minus, div, mult, equal
//    }

    
//    switch Button {
//    case one:
//    case two:
//    case three:
//    case four:
//    case
//    }
//
    
    @IBAction func clear(_ sender: UIButton) {
        num1 = nil
        num2 = nil
        sign = nil
        result = nil
        equalsBar.text = nil
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        
        let operatArr = ["x", "+", "÷", "-"]
        
        let btnTitle = sender.titleLabel?.text
        
        if let unwrappedBtnTitle = btnTitle{
            if unwrappedBtnTitle == "=" {
                if num2 == nil {
                    equalsBar.text = "error"
                }else{
                    switch sign {
                    case "+":
                        result = Double(num1!)! + Double(num2!)!
                    case "-":
                        result = Double(num1!)! - Double(num2!)!
                    case "x":
                        result = Double(num1!)! * Double(num2!)!
                    case "÷":
                        result = Double(num1!)! / Double(num2!)!
                    default:
                        result = nil
                    }
                    equalsBar.text = String(result!)
                }
            }else if operatArr.contains(unwrappedBtnTitle) && num1 != nil{ //defines sign second
                sign = unwrappedBtnTitle
            }else if sign == nil { //defines num1 first
                if num1 == nil {
                    num1 = unwrappedBtnTitle
                }else{
                    num1! += unwrappedBtnTitle
                }
                equalsBar.text = num1
            }else{ //defines num2 third
                if num2 == nil {
                    num2 = unwrappedBtnTitle
                }else{
                    num2! += unwrappedBtnTitle
                }
                equalsBar.text = num2
            }
        }
    }
    
}

