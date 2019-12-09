//: Firs task. Iam creat two arrays whats coisist from names of mounth of yer and counter days in each mounth.


let nameOfMounth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
let numbersDayOnMounth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for i in 0...nameOfMounth.count-1 {
    print("In mounth " + nameOfMounth[i]  + " has  \(numbersDayOnMounth[i]) days")
}

//:Second task we create  Tuples

//:create twenty tuples mounth and his days
var arrayTuplMounthDays = [
    (mounth: "January", days: 31 ),
    (mounth: "February" ,days:28),
    (mounth: "March" , days: 31 ),
    (mounth: "April" , days: 30 ),
    (mounth: "May" , days: 31 ),
    (mounth: "June" , days: 30 ),
    (mounth: "July" , days: 31 ),
    (mounth: "August" , days: 31),
    (mounth: "September" , days: 30 ),
    (mounth: "October" , days: 30 ),
    (mounth: "November" , days: 30 ),
    (mounth: "December" , days: 31 ),
]
var mounth = ""
var days = 0

for (mounth, days) in arrayTuplMounthDays {
    print("Mounth \(mounth) counter days \(days)")
    
}

/* Three task. We create  hashmap key = name of mounth value itis count of day in this mounth. Valk around and println
 :Mounth: "key" count of days "value" */
var hashmapMounthDay = [String: Int]()

//: add in hashmap data from two arrayLists wah we create in firs task
for (i, keyMounth) in nameOfMounth.enumerated(){
    hashmapMounthDay.updateValue(numbersDayOnMounth[i], forKey: "Last " + keyMounth)
   }

//: walk around for hashmap and print result
for (keyMount, valueDays) in hashmapMounthDay{
   print("Mounth: \(keyMount) count of days : \(valueDays)")
}
