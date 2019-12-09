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
    
    @IBOutlet weak var showNUser: UIButton!
    
    @IBOutlet weak var close: UIButton!
    
    
    //array weare store all objekts type Users
    var usersArray = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //is dont enterred data button showNUsers dont work
        showNUser.isEnabled = false
        
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
                usersArray.append( User (firstName: nameUser, secondName: secNameUser ))
            }else{
                usersArray.append( User (firstName: nameUser, secondName: secNameUser , description: fieldDescription.text!))
            }
            
            
            //clean text fild fon next enter and correct button for print result
            fieldName.text = nil
            fieldLastName.text = nil
            fieldDescription.text = nil
            showNUser.setTitle("Show \(usersArray.count) users", for: UIControl.State.normal)
            showNUser.isEnabled = true
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
    // move araylist whith users to next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seg"{
            let dectVievCont = segue.destination as! MyTVController
            dectVievCont.usersArray = self.usersArray
        }
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


