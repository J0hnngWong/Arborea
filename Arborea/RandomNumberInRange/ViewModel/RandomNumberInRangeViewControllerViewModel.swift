//
//  RandomNumberInRangeViewControllerViewModel.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/2.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomNumberInRangeViewControllerViewModel: BaseViewModel {
    private lazy var headNumber:Int = {
        return 0
    }()
    private lazy var tailNumber:Int = {
        return 0
    }()
    private lazy var stepNumber:Int = {
        return 1
    }()
    
    public func produceRandomNumber() -> Int! {
        if self.stepNumber <= 0 {
            self.setStepNumber(newValue: 1)
        }
        let range:Int = Int(abs(self.headNumber - self.tailNumber))
        let rangeWithStep:UInt32 = UInt32(range / self.stepNumber) + 1
        let randomNum:Int = Int(arc4random() % rangeWithStep)
        let minNumber:Int = Int(self.headNumber > self.tailNumber ? self.tailNumber : self.headNumber)
        let result:Int = randomNum * stepNumber + minNumber
        return result
    }
    
    public func setHeadNumber(newValue:Int) {
        self.headNumber = newValue
    }
    
    public func setTailNumber(newValue:Int) {
        self.tailNumber = newValue
    }
    
    public func setStepNumber(newValue:Int) {
        self.stepNumber = newValue
    }
}
