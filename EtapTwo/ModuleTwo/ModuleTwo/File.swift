//
//  User.swift
//  Module2
//
//  Created by NoutAsus on 02/08/2019.
//  Copyright © 2019 ЛюдаАйМак. All rights reserved.
//

import Foundation

/* Clas what store info about users*/
class User {
    // array whith ten different biography or description when we dont input deckription in fild deckription
    let biographi = [
        "I'am born in NY, but now work in Kropyvnitskiy =(",
        "I'am born in Kiev, but now work in NY",
        "I'am born in LA, but now work in NewYork",
        "I'am born in Odessa, now i am stady",
        "I'am born in Kiev, now i am stady",
        "I'am born in NY, now i am stady",
        "I'am born in LA, now i am stady",
        "I'am born in Kropyvnitskiy, now i am don't work",
        "I'am born in Kropyvnitskiy, and now work in ONIX",
        "I'am born in Kropyvnitskiy, and now stady in SPP"
    ]
    
    // Name and second name each users
    var firstName: String
    var secondName:String
    //randoom biography or description
    var someDescrip : String = ""
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
        someDescrip = biographi.randomElement()!
    }
    
    // initial new user take description age and names
    init(firstName: String, secondName: String, description: String) {
        self.firstName = firstName
        self.secondName = secondName
        someDescrip = description
    }
    
}
/*---------------------*/
