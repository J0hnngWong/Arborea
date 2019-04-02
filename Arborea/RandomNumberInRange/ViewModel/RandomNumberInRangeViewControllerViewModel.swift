//
//  RandomNumberInRangeViewControllerViewModel.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/2.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomNumberInRangeViewControllerViewModel: BaseViewModel {
    private lazy var minNumber:Int = {
        return 0
    }()
    private lazy var maxNumber:Int = {
        return 0
    }()
    private lazy var stepNumber:Int = {
        return 0
    }()
    
    public func produceRandomNumber() -> Int! {
        let range:Int = Int(self.maxNumber - self.minNumber)
        let randomNum:Int = Int(arc4random() % UInt32(range))
        let result:Int = randomNum * stepNumber + self.minNumber
        return result
    }
    
    public func setMinNumber(newValue:Int) {
        self.minNumber = newValue
    }
    
    public func setMaxNumber(newValue:Int) {
        self.maxNumber = newValue
    }
}
