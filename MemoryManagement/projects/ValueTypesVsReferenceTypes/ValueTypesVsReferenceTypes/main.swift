//
//  main.swift
//  ValueTypesVsReferenceTypes
//
//  Created by daniel.da.cunha.lima on 16/10/20.
//  Copyright © 2020 concrete. All rights reserved.
//

import Foundation

//Value types

func showNumber(third: Int) {
    print("third number: ", third)
}

var first = 8
var second = first

first = 2
showNumber(third: second)

print("first number: ", first)
print("second number: ", second)


//Reference Types
/*
class Concrete {
    var totalEmployees = 250
}

var first: Concrete? = Concrete()
var second = first
var third = second

//second.totalEmployees = 300
first = nil

print("first number: ", first?.totalEmployees ?? "Vazio")
print("second number: ", second?.totalEmployees ?? "Vazio")
print("third number: ", second?.totalEmployees ?? "Vazio")
*/

//Referência ciclica

//Demo de tela
