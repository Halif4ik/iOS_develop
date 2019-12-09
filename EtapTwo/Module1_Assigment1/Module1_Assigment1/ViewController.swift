//
//  ViewController.swift
//  Module1_Assigment1	
//
//  Created by NoutAsus on 29/06/2019.
//  Copyright © 2019 NoutAsus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // variable where we take text whith name  and second user
    @IBOutlet weak var nameFild: UITextField!
    @IBOutlet weak var lastnFild: UITextField!
    //in this layble we soon will store info about all user
    @IBOutlet weak var lableShowListUsers: UILabel!
    
    @IBOutlet weak var printNUserButton: UIButton!
    
    /* aray what will store  obgect type users */
    var usersArray = [User]()
    
    /* Clas what store info about users*/
    class User {
        // Name and second name each users
        var firstName: String
        var secondName:String
        /* this caclucete fild  return some litle info about (object) user*/
        var allInfoUser: String {
            get{
                return "\(firstName.capitalized) \(secondName.capitalized)"
            }
        }
        // initial new user take him age and names
        init(firstName: String, secondName: String) {
            self.firstName = firstName
            self.secondName = secondName
        }
        
    }
    /*---------------------*/
    
    /*this function start work when we press in button SAVE, and read srting from TextFilds, check
     if then not null and creat objeck User and add it in ArrayList*/
    
    @IBAction func savePressed(_ sender: UIButton) {
        
        // start check input data in filds when we prees in button save first if not input
        guard nameFild.text?.isEmpty == false || lastnFild.text?.isEmpty == false  else { return  }
        
        //second chek input string on lirelals if this field are wrong create new alert whirh exeption
        let nameUser = nameFild.text!
        let secNameUser = lastnFild.text!
        
        if ifWrongStr(curentString: nameUser) || ifWrongStr(curentString: secNameUser){
            let alert = UIAlertController(title: "Exception", message: "You entered wrong Name/Secondname", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        } else {
            //if chek is ok. create obj user and add in array
            usersArray.append( User (firstName: nameUser, secondName: secNameUser ))
            
            //clean text fild fon next enter and correct button for print result
            nameFild.text = nil
            lastnFild.text = nil
            printNUserButton.setTitle("Print \(usersArray.count) users", for: UIControl.State.normal)
            
        }
    }
    
    /*  cher for each char in string if searched NOT later return true*/
    private func ifWrongStr(curentString: String)-> Bool{
        for char in curentString{
            if !char.isLetter{
                return true
            }
        }
        return false
    }
    
    
    /*this function start work when we press in button <PRINT N USER>, and read size arraList Users,   and println allinfo about user*/
    @IBAction func printNUsersPressBut(_ sender: UIButton) {
        for currenUser in usersArray{
            print(currenUser.allInfoUser)
        }
    }
    
}

