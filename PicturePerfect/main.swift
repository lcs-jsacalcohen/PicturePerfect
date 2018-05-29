//
//  main.swift
//  PicturePerfect
//
import Foundation

// INPUT
// Global variable to use later in program
// Write a loop to actually collect the number of photo arrangements to be considered
// e.g.: write the rest of the INPUT section
var givenPhotos = 0
while 1==1 {
    print("How many photo arrangements will be considered?")
    guard let input = readLine() else {
        continue
    }
    guard let intInput = Int(input) else {
        continue
    }
    if intInput < 1 || intInput > 10 {
        continue
    }
    givenPhotos = intInput
    break
}

// PROCESS & OUTPUT
// Collect the number of pictures in each arrangement using this loop
for counter in 1...givenPhotos {
    
    // Ask how many pictures in this particular arrangement
    print("How many pictures in photo arrangement #\(counter)?")
    
    guard let givenInput = readLine() else {
        continue
    }
    guard let numberOfPhotos = Int(givenInput) else {
        continue
    }
    
    if numberOfPhotos > 65_000 || numberOfPhotos < 0 {
        continue
    }
    
    var oneSide = 0
    var arrayOfSides : [Int] = []
    for i in 1...numberOfPhotos {
        if numberOfPhotos % i == 0 {
            arrayOfSides.append(i)
        }
    }
    
    oneSide = arrayOfSides[(arrayOfSides.count - 1) / 2]
    
    
    // What was provided?
    let secondSide = numberOfPhotos / oneSide
    let perimeter = 2 * secondSide + 2 * oneSide
    print("Minimum perimeter is \(perimeter) with dimensions \(secondSide) and \(oneSide)")
    
    
    
}
