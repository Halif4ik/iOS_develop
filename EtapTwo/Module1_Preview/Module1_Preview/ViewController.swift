//
//  ViewController.swift
//  Module1_Preview
//
//  Created by NoutAsus on 25/06/2019.
//  Copyright © 2019 NoutAsus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leyba: UILabel!
    
    
    @IBAction func SaYinConsel( _ sender: UIButton) {
    print("It is presed a key!")
        
    if sender.backgroundColor == .white {
            sender.backgroundColor = UIColor.black
    } else{
        sender.backgroundColor = UIColor.white
        }
    
        
    }
    @IBAction func pressBut(_ sender: UIButton) {
        leyba.text = "Hello world"
    }
    
}

