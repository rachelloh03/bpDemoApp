import UIKit

// ******************* //
// Declaring variables
// ******************* //

let var1 = 5
let var2 = "blueprint"
// **** SYNTAX **** //
// let constant name: type = expression
let var4: Float = 1.0

// 'let' indicates a constant, so var5 must be set to a value at declaration
let var5: UILabel // ERROR
let var6: UILabel = UILabel() // valid
let var7 = UILabel()

// var's are mutable and initialized later
var var3 = "mutable"
var var8: String


// ********** //
// Data Types //
// ********** //

// TODO: document some useful methods for each (e.g. arrays: append, count, reduce, map, remove, concat, etc.)

// Tuples
/* Useful methods
 assafsadsadf
 
 */
let myTuple = ("blueprint", 2021)

// Arrays
let myFirstArray = ["blueprint", 2021] // ERROR
let mySecondArray: [Any] = ["blueprint", 2021]
let emptyArray: [Int] = []
let emptyArray2: Array<Double> = Array() // similar to Java

// Sets
let mySet: Set = ["start hacking", "mobile dev (iOS)", "mobile dev (Android)", "web dev beginner", "web dev advanced"]

// Dictionaries
let myDict: Dictionary<String, Int> = [:]
let myDict2 = [Int: UILabel]()

// Typealiases: alternate name for existing type
typealias CustomType = [UUID:People] // assume we have a class People

// Iterating
for i in 0...mySecondArray.count {
    print(mySecondArray[i])
}

for element in mySecondArray {
    print(element)
}

// ********* //
// Optionals //
// ********* //

// TODO: what is an optional? when does it arise?
// default is nil
var myImage: UIImage? // same as `var myImage: UIImage? = nil`
var mySlider: UISlider!

// Unwrapping optionals
var unwrappedImage = UIImage()
var unwrappedSlider = UISlider()
func unwrapper() {
    
    // Option 1 (recommended)
    guard let unwrappedImage = myImage else {
        print("Unwrap failed! ):")
        return
    }
    print("Unwrap success!")
    
    // Option 2
    if let unwrappedImage = myImage {
        print("Unwrap success! \(unwrappedImage)")
    }
    
    // Option 3
    if mySlider != nil {
        unwrappedSlider = mySlider
        print("Unwrap success! \(unwrappedSlider)")
    }
}


// *************** //
// Basic functions //
// *************** //

// TODO: document syntax
func myVar(param: String) -> String {
    var v: String
    v = param
    return v
}

print(myVar(param: var2))


// ************** //
// Error Handling //
// ************** //

func checkVar(v: String) throws {
    //..
}

do {
    try checkVar(v: var2)
} catch {
    print("Something went wrong!")
}

// ************************* //
// Enums, classes, & structs //
// ************************* //

// enum
enum Track {
    case startHacking, mobileiOS, mobileAndroid, webdevBeginner, webdevAdvanced
}

// TODO: explain diff between structs and classes

// struct
struct Hacker {
    let name: String
    let id: Int
    let track: Track
    var isCheckedIn: Bool = false
    
    // TODO: explain why we need "'mutating" keywrod
    mutating func checkIn() {
        isCheckedIn = true
    }
}

// class
class Hackathon {
    let name: String = ""
    let location: String = ""
    let host: String = ""
    let date: Date = Date()
    var participants: [Hacker] = []
    
    func getParticipants() -> Int {
        return participants.count
    }
    
    func updateParticipants(hackers: [Hacker]) {
        participants += hackers
    }
}

let hacker = Hacker(name: "Mindy", id: 1, track: .mobileiOS)
let hackathon = Hackathon()
hackathon.updateParticipants(hackers: [hacker])

print(hackathon.participants)
