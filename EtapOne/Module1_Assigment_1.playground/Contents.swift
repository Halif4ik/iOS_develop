// This constnts  that the user rules
let first :Int = 1
let two : Double = 2.0
let three : Float = 3.0
let four : String = "4"
let five : String = "five"


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

var parsFour = parsingStringArgToInt(str: four)
var parsFive = parsingStringArgToInt(str: five)


//add all veriables or println we have not correct input data
if parsFive == -1 || parsFour == -1{
    print( "Five or four element input incorect! Please check")
}else{
    print("\(Double(first) + two + Double(three) + Double(parsFour) + Double (parsFive))" + " result add you veriables")
}


