//
//  syntax.swift
//  BlueprintDemoApp
//
//  Created by Mindy Long on 2/3/21.
//

import Foundation
import UIKit

// Declaring variables

let var1 = 5
let var2 = "blueprint"
// let constant name: type = expression
let var4: Float = 1.0

// 'let' indicates a constant, so var5 must be set to a value at declaration
//let var5: UILabel // ERROR
let var6: UILabel = UILabel() // valid
let var7 = UILabel()

var var3 = "mutable"
//var var8: String // ERROR

func myVar(param: String) -> String {
    var v: String
    v = param
    return v
}

