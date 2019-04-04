//
//  RandomListCellModel.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/4.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomListCellModel: BaseModel {
    var category: String?
    var value: String?
    
    init(category : String, value : String) {
        super.init()
        self.category = category
        self.value = value
    }
}
