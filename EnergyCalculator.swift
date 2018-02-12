//
//  EnergyCalculator.swift
//  This program calculates the energy that can be calculated from a given mass
//
//  Created by Heejo Suh in Feb 2018
//  Copyright ¨Ï 2018 MTHS. All rights reserved.
//
import Foundation

//no input yet, need '?' to close
var input: String?
var massInput: Double = 0.0
var totalEnergy: Double = 0.0

let speedOfLight: Double = 2.998 * pow(10, 8)


//while appropriate response has not been collected
//use while-true functions to break out of
while true {
	print("Input mass (kg) to be converted: ")
    input = readLine(strippingNewline: true)
    //check if input is a number
	if let check = Double(input!), check != nil {
		massInput = Double(input!)!
		//calculate  (E=mc^2)
		totalEnergy = massInput*pow(speedOfLight, 2)
		print("Maximum amount of energy the mass can be converted into:  \(totalEnergy)J.")
		//need break to get out of while loop and not repeat question
		break
	} else {
		print("ERROR:\nPut in a numeric value. TRY AGAIN. \n\n")
	}
}
