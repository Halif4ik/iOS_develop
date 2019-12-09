//
//  MyTVController.swift
//  ModuleTwo
//
//  Created by NoutAsus on 03/08/2019.
//  Copyright © 2019 Nout. All rights reserved.
//

import UIKit

class MyTVController: UITableViewController {
    
    //array weare come all objekts type Users from main viev controller
    var usersArray = [User]()
    
    let indentifCell = "MyTVCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //empty cell deleted  new UIView and in the and table absent cells
        tableView.tableFooterView = UIView()
        
    }
    
    // turn on menu for delete any row and delete selected user from araylist
    @IBAction func deleteUser(_ sender: UIBarButtonItem) {
        self.isEditing = !self.isEditing}
    
    
    // TODO: UITableVievDataSourse
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: indentifCell, for: indexPath) as! MyTVCell
        let currentUsver =  usersArray[indexPath.row]
        
        cell.name.text = currentUsver.firstName
        cell.descript.text = currentUsver.someDescrip
        cell.lastName.text = currentUsver.secondName
        return cell
    }
    // TODO: UITableVievDelegate
    
    // SELECT style for button DELETE
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return UITableViewCell.EditingStyle.delete
    }
    // func for delete from storybord and from araylist
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete{
            usersArray.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.left)
        }
    }
    
}
