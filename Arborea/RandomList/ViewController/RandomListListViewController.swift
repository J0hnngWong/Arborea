//
//  RandomListListViewController.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/3.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomListListViewController: BaseViewController {
    
    var viewModel: RandomListListViewControllerViewModel = RandomListListViewControllerViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.renderSubviews()
        self.renderEvents()
        self.bindData()
        self.test()
    }
    
    private func renderSubviews() {
        
    }
    
    private func renderEvents() {
        
    }
    
    private func bindData() {
        
    }
    
    private func produceRandomSortOfTableCell() {
        self.viewModel.produceRandomSortOnDataSource()
    }
    
    private func test() {
        for index in 1...10 {
            let model: RandomListCellModel = RandomListCellModel(category: String(index), value: String(index))
            self.viewModel.addObjectToDataSource(object: model)
        }
        print("before random : ")
        self.viewModel.printDataSource()
        self.produceRandomSortOfTableCell()
        print("after random : ")
        self.viewModel.printDataSource()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
