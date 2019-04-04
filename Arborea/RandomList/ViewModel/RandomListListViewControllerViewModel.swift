//
//  RandomListListViewModel.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/3.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomListListViewControllerViewModel: BaseViewModel {
//    public var dataSource: Array<RandomListCellModel>?
    public lazy var dataSource: Array<RandomListCellModel> = {
        var data:Array<RandomListCellModel> = Array()
        return data
    }()

//    init(data: Array<RandomListCellModel>) {
//        super.init()
//        self.dataSource = data
//    }
    
    public func addObjectToDataSource(object: RandomListCellModel) {
        self.dataSource.append(object)
    }
    
    public func setDataSource(data: Array<RandomListCellModel>) {
        self.dataSource = data
    }
    
    public func produceRandomSortOnDataSource() {
        var count = self.dataSource.count - 1
        while count >= 0 {
            //找一个随机位置
            let randomPosition = PublicToolBox.getRandomNumber(headNumber: 0, tailNumber: count, stepNumber: 1)
            //与最后一位进行交换
            let tempNumber = self.dataSource[randomPosition]
            self.dataSource[randomPosition] = self.dataSource[count]
            self.dataSource[count] = tempNumber
            //count--继续进行下一次
            count -= 1
        }
    }
    
    public func printDataSource() {
        for object: RandomListCellModel in self.dataSource {
            print("category : \(object.category ?? ""), value : \(object.value ?? "")")
        }
    }
}
