//
//  ViewController.swift
//  ModuleTwo
//
//  Created by NoutAsus on 02/08/2019.
//  Copyright © 2019 NoutAsus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // variable where we take text whith name  and second user
    @IBOutlet weak var fieldName: UITextField!
    
    @IBOutlet weak var fieldLastName: UITextField!
    
    @IBOutlet weak var fieldDescription: UITextView!
    
    // temp veriable for debag
    @IBOutlet weak var counterUserInStore: UILabel!
    @IBOutlet weak var close: UIButton!
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
       
    }
    
    /*this function start work when we press in button SAVE, and read srting from TextFilds, check
     if then not null and creat objeck User and add it in ArrayList*/
    @IBAction func saveUserInArray(_ sender: UIButton) {
        // start check input data in filds when we prees in button save first if not input eny data
        guard !fieldName.text!.isEmpty && !fieldLastName.text!.isEmpty else { return }
        
        //second chek input string on lirelals if this field are wrong create new alert whirh exeption
        let nameUser = fieldName.text!
        let secNameUser = fieldLastName.text!
        
        //if chek is ok. create objekc type user and add in array
        if ifWrongStr(curentString: nameUser) || ifWrongStr(curentString: secNameUser){
            let alert = UIAlertController(title: "Exception", message: "You entered wrong Name/Secondname", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        } else {
            //if we dont entered decription we must create usrs whis randoom biografi
            if  fieldDescription.text.isEmpty {
                UserStore.usersArray.append( User (firstName: nameUser, secondName: secNameUser ))
            }else{
                UserStore.usersArray.append( User (firstName: nameUser, secondName: secNameUser , description: fieldDescription.text!))
            }
            
            
            //clean text fild fon next enter and correct button for print result
            fieldName.text = nil
            fieldLastName.text = nil
            fieldDescription.text = nil
            //abdate info in main screen how macth user in array  TODO: NOT WORK
            counterUserInStore.text = String(UserStore.usersArray.count)
            
        }
    }
    
    // func perform unwind segue to main viev
    @IBAction func cencelAction ( _ segue: UIStoryboardSegue){
            }
    
    /*  check for each char in string if searched NOT later return true*/
    private func ifWrongStr(curentString: String)-> Bool{
        for char in curentString{
            if !char.isLetter{
                return true
            }
        }
        return false
    }
      
}

// mark: textfilds delegate
extension ViewController : UITextFieldDelegate {
    // unshow keyboard for press key done
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


