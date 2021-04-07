//
//  ListViewController.swift
//  ToDoList
//
//  Created by Aaron Levy on 4/5/21.
//

import UIKit


class ListViewController: BaseViewController, fillToDoCell, SendCompletedInfo{
    
    
    
    
    
    
    @IBOutlet weak var toDoList: UITableView!
    
    let myToDoList = ToDoList.init()

    override func viewDidLoad() {
        super.viewDidLoad()
                
        toDoList.delegate = self
        toDoList.dataSource = self
        
        
        let addButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewTask))
        
        navigationItem.rightBarButtonItem = addButton
    }
    
    override func viewDidAppear(_ animated: Bool) {
        toDoList.reloadData()
    }
    
//    @objc func dismissKeyboard(){
//        view.endEditing(true)
//    }
    
    @IBAction func addNewTask(_ sender: UIBarButtonItem) {
        let st = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(identifier: ViewControllerConstants.CAddViewController) as! AddViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    func fillCell(title: String, description: String, deadline: String) {
        myToDoList.addToDo(title: title, description: description, deadline: deadline)
    }
    
    

    
    func changeCompleteStatus(task: String) {
        
        toDoList.reloadData()
        //let cellArr = myToDoList.toDoArray
        
//        for var cell in cellArr{
//            if cell.title == task{
//                //cell.complete = !cell.complete
        
//                break
//            }
//        }
        //let cell = tableView(toDoList, cellForRowAt: IndexPath.init(index: indPath.row))
        //let cell = tableView(toDoList, cellForRowAt: rowNum)
        
    }
    
   
}



extension ListViewController:  UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myToDoList.numThingsToDo()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoCell") as? ToDoTableViewCell
        cell?.delegate = self
        cell?.titleLbl.text = myToDoList.getTask(index: indexPath.row)
        cell?.deadlineTxtField.text = myToDoList.getDeadline(index: indexPath.row)
        cell?.descriptionTextView.text = myToDoList.getDescription(index: indexPath.row)
        cell?.isCOmpletedSwitch.model = myToDoList.getToDo(index: indexPath.row)
        print(cell?.isCOmpletedSwitch.selectedSegmentIndex)
        if myToDoList.isComplete(index: indexPath.row) == true {
            cell?.contentView.alpha = 0.5
        }else {

            cell?.contentView.alpha = 1.0
        }
        
        return cell!
    }
    
    
    
    #warning("find out how to select row")
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let cell = tableView.cellForRow(at: indexPath)
        cell?.alpha = 0.5
    }
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath){
        let cell = tableView.cellForRow(at: indexPath)
        cell?.alpha = 0.5
    }
    #warning("ends here")
    
    
    
    
}

