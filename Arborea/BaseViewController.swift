//
//  BaseViewController.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/3/26.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    var baseViewModel = BaseViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func initializeWithViewModel(viewModel:BaseViewModel) {
        self.baseViewModel = viewModel
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
