//
//  MyTVCell.swift
//  ModuleTwo
//
//  Created by NoutAsus on 03/08/2019.
//  Copyright © 2019 NoutAsus. All rights reserved.
//

import UIKit

class MyTVCell: UITableViewCell {

      // castoms lable what nedd create in task this module
    @IBOutlet weak var descript: UILabel!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
