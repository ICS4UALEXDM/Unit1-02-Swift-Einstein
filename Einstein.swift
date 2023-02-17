import Foundation
import Glibc
//
//  Einstein.swift
//
//  Created by Alex De Meo
//  Created on 2023/02/11
//  Version 1.0
//  Copyright (c) 2023 Alex De Meo. All rights reserved.
//
//  This program calculates the Energy released when mass.
// is converted to energy

let lightSpeed = 2.998 * pow(10.0, 8.0)

// Getting the radius
print("Enter the mass: ")

if let mass = Double(readLine()!) {
    // Deciding what to output
    if (mass >= 0) {

        // Doing the math
        let energy = mass * pow(lightSpeed, 2.0)
        let fmtdEnergy = String(format: "%.3e", energy)
        print(
            "\(fmtdEnergy) is the max amount of energy released when \(mass)"
            + "kg is converted"
            )
    } else {
        print("Negative input is invalid")
    }
} else {
    print("non-numerical input is invalid.")
}