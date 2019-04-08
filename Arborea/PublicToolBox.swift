//
//  PublicToolBox.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/4.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

enum CoinSurfaceType {
    case head
    case tail
}

class PublicToolBox: NSObject {
    //return a number between [headNumber tailNumber], with a stepNumber,if step number is less then or equal to zero, it will set to 1
    class func getRandomNumber(headNumber: Int, tailNumber: Int, stepNumber: Int) -> Int {
        var correctStepNumber = stepNumber
        if correctStepNumber <= 0 {
            correctStepNumber = 1
        }
        let range:Int = Int(abs(headNumber - tailNumber))
        let rangeWithStep:UInt32 = UInt32(range / correctStepNumber) + 1
        let randomNum:Int = Int(arc4random() % rangeWithStep)
        let minNumber:Int = Int(headNumber > tailNumber ? tailNumber : headNumber)
        let result:Int = randomNum * correctStepNumber + minNumber
        return result
    }
    
    class func getRandomNumber(maxIndex: Int) -> Int {
        return PublicToolBox.getRandomNumber(headNumber: 0, tailNumber: maxIndex, stepNumber: 1)
    }
    
    class func getHeadOrTail() -> CoinSurfaceType {
        let surface: Int = PublicToolBox.getRandomNumber(headNumber: 0, tailNumber: 1, stepNumber: 1)
        if surface == 1 {
            return CoinSurfaceType.head
        } else {
            return CoinSurfaceType.tail
        }
    }
}
