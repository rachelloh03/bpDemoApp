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
let myTuple = ("blueprint", 2021)

//Tuple Methods
myTuple[0]  //access element at index

// Arrays
let myFirstArray = ["blueprint", 2021] // ERROR
var mySecondArray: [Any] = ["blueprint", 2021]
let emptyArray: [Int] = []
let emptyArray2: Array<Double> = Array() // similar to Java
let digitCounts = Array(repeating: 0, count: 10) //intializes array of 0s with length 10

//Array Methods
mySecondArray.isEmpty  //checks if empty
mySecondArray.count  //length of array
mySecondArray.first  //get first element of array
mySecondArray.last  //get last element of array
mySecondArray.append("new element") //append item to end of array
mySecondArray.append(contentsOf: ["a", "b"]) //append multiple elements to end of array
mySecondArray.insert("Swift", at: 1) //insert item at specified index
mySecondArray.remove(at: 1) //removes element at index
mySecondArray.removeLast() //remove last element
mySecondArray[0] //get element at index 0
mySecondArray[0...2] //gets subarray of elements, inclusive


// Sets- used to test efficiently for membership when order doesn't matter
let mySet: Set = ["start hacking", "mobile dev (iOS)", "mobile dev (Android)", "web dev beginner", "web dev advanced"]
let set2: Set = ["start hacking", "a", "Swift", "test"]

// Set methods
mySet.contains("test") //tes
mySet.isSubset(of: set2)  //test if your set is a subset
mySet.union(set2) //join with another set
mySet.intersection(set2) //get intersection of this set with other set
// can also use any nonmutating sequence or collection methods with a set

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

// Optional- is either an unwrapped value or nil- basically will either have a value that can be unwrapped and accessed, or not value
// used in situations when a value may not exist- like when an operation may fail or return nothing
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

// func name(parameters) -> (return type) { function }
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

// both class and struct types can define properties, methods, initializers, and conform to protocols
// Classes can inherit from each other and is a reference type- instances of a class are accessed through references
// Struct is a value type and (kinda) immutable

// struct
struct Hacker {
    let name: String
    let id: Int
    let track: Track
    var isCheckedIn: Bool = false
    
    // mutating functions changes the values of the struct- internally, the old Hacker is replaced by a new Hacker with an updated isCheckedIn value
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
