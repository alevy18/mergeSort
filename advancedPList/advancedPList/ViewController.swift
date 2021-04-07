//
//  ViewController.swift
//  advancedPList
//
//  Created by Aaron Levy on 4/5/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    lazy var arr = [[String : String]]()
    lazy var arr1 = [Book]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        readPlist()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")
//        let obj = getBook(index: indexPath.row)
//        let bookName = getValue(obj: obj, key: "bookName")
//        let author = getValue(obj: obj, key: "Author")
//        let combined = concatenateString(p1: bookName, p2: author)

        let obj = getBookFromArray(index: indexPath.row)
        let bookName = getBookNam
        
        cell?.textLabel?.text = combined
        return cell!
    }
    
    func getBookCount() -> Int {
        return arr1.count
    }
    
    func getBookFromArray(index: Int) -> [String : String]{
        return arr[index]
    }
    
    func getValueFromBook(obj: [String : String], key: String) -> String {
        return obj[key] ?? ""
    }
    
    
    
    func getBooksCount() -> Int {
        return arr.count
    }
    
    func getBook(index: Int) -> [String : String]{
        return arr[index]
    }
    
    func getValue(obj: [String : String], key: String) -> String {
        return obj[key] ?? ""
    }
    
    func concatenateString(p1: String, p2: String) -> String{
        return p1 + " " + p2
    }
    
    
    
    
    
    
    
    func readPlist(){
        if let path = Bundle.main.path(forResource: "books", ofType: "plist"){
            if let array = NSArray.init(contentsOfFile: path) as? [[String : String]] {
                print(array[0]["bookName"])
                arr = array
                
                for objDict in array {
                    let bookName  = objDict["bookName"] ?? ""
                    let author = objDict["author"] ?? ""
                    let isbn = objDict["ISBN"] ?? ""
                    let book = Book.init(bookName: bookName, author: author, ISBN: isbn)
                }
                
                
            }
        }
    }
}

