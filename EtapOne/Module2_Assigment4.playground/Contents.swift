/*This structure can store veriable what we wil add. This variable can been diff type */
struct Number<T> {
    // scope wehe store needed veriables
    var items : T
    
    mutating func set(item: T) {
        items
    }
    func get() -> T {
        return items
    }
}
//create three referens (object) different type and add its in array
var arrayNumbers = [Number<Any>]()
/*cointeins array*/
arrayNumbers.append(Number(items: 10))
arrayNumbers.append(Number(items: 1.1))
arrayNumbers.append(Number(items: "six"))


// function take variables type string, what conteins from numbers for example "1" or "2" or "one" and decide what need in integer
func parsingStringArgToInt (str : String)-> Int{
    var parsFour : Int
    
    switch str {
    case "1", "one":
        parsFour = 1
    case "2", "two":
        parsFour = 2
    case "3", "three":
        parsFour = 3
    case "4", "four":
        parsFour = 4
    case "5", "five":
        parsFour = 5
    case "6","six":
        parsFour = 6
    case "7","seven":
        parsFour = 7
    case "8", "eight":
        parsFour = 8
    case "9","nine":
        parsFour = 9
    default:
        parsFour = -1
    }
    return parsFour
}

// walk around in array pop all element, cast each element in double, and add its whith result
var result = 0.0

for element in arrayNumbers {
    if let numberInString = element.get() as? String{
        print(parsingStringArgToInt(str: numberInString))
        result += Double(parsingStringArgToInt(str: numberInString))
    } else if  element.get() is Int {
        result += Double(element.get() as! Int)
    } else if let numberInDouble = element.get() as? Double{
        result += numberInDouble
    }
}

// println result
print("Sum of all numbers = \(result)")






