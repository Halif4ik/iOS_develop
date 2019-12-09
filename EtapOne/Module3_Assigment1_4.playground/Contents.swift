import Foundation
/* Clas what store info about users*/
class User {
    // Name and second name each users
    var firstName: String
    var secondName:String
    // Hou old uor user
    var age: Int = 0
    // initial new user take him age and names
    init(firstName: String, secondName: String, age:Int) {
        self.age = age
        self.firstName = firstName
        self.secondName = secondName
    }
    /* this function return some litle biographi about (object) user*/
    func description(biographi: String) -> String {
        return "Hello! My name is \(firstName) \(secondName) and I'am \(age) years old! " + biographi
    }
    
}

//create array whith 10 random String what store first name and second name.
//                  0       1       2       3           4       5       6       7       8       9
let nameArray = ["Jack", "Naomi", "Dima", "Natali", "Slavik", "Kate", "Ihor", "Ivan", "Dasha", "Dick"]
let secondnameArray = ["Dolhorukov", "Kill", "Nout", "Chaini", "Zero", "Armstrong", "Geyts", "Buffet", "Mask", "Green"]
// array whith ten different biography or description
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
/* aray what will store 100  obgect type users */
var usersArray = [User]()

//  containing our array new 100 users
for _ in  1...100 {
    let randomFiName = nameArray.randomElement()
    let randomSeName = secondnameArray.randomElement()
    let age = Int.random(in: 1...120)
    
    usersArray.append(User (firstName: randomFiName!, secondName: randomSeName!, age: age))
    
}
// wheare we store users from 18 to 35 years old
var usersArr18_35 = [User] ()

/* take arraylist whith all user and chek it and dicede what user need add in each arrayList */
func showOldUser(fullArrUser:[User])-> [User]{
    var counterOldUser: Int = 0
    fullArrUser.count
    
    for currentUser in fullArrUser{
        /* check age for all user  if in array list presen any users*/
        if currentUser.age > 30 && currentUser.age < 120{
            counterOldUser += 1
        }
        if currentUser.age > 18 && currentUser.age < 35{
            usersArr18_35.append(currentUser)
                }
        /* check field firstname for user Dima if in array list presen any users whith this name println his
         secondname*/
        if currentUser.firstName == "Dima" {
            print(currentUser.secondName)
        }
        
    }
    print("Count users what age less 30 is - \(counterOldUser)")
    return usersArr18_35
}


//show how mach users oldest 30 yaers
showOldUser(fullArrUser: usersArray)

print("Count users what age from 18 by 35 is - \(usersArr18_35.count)" )
