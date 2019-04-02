//
//  RandomNumberInRangeViewController.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/4/2.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class RandomNumberInRangeViewController: BaseViewController {
    @IBOutlet weak var randomNumberResultLabel: UILabel!
    @IBOutlet weak var headNumberTextField: UITextField!
    @IBOutlet weak var tailNumberTextField: UITextField!
    @IBOutlet weak var stepNumberTextField: UITextField!
    @IBOutlet weak var produceRandomNumberButton: UIButton!
    
    private var viewModel:RandomNumberInRangeViewControllerViewModel = RandomNumberInRangeViewControllerViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.renderSubViews()
        self.renderEvents()
    }
    
    private func renderSubViews() {
        
    }
    
    private func renderEvents() {
        self.produceRandomNumberButton.addTarget(self, action: #selector(produceRandomNumber), for: UIControl.Event.touchUpInside)
    }
    
    @objc private func produceRandomNumber() {
        let headNumber:Int = Int(self.headNumberTextField.text ?? "0") ?? 0
        let tailNumber:Int = Int(self.tailNumberTextField.text ?? "0") ?? 0
        let stepNumber:Int = Int(self.stepNumberTextField.text ?? "0") ?? 0
        viewModel.setHeadNumber(newValue: headNumber)
        viewModel.setTailNumber(newValue: tailNumber)
        viewModel.setStepNumber(newValue: stepNumber)
        self.randomNumberResultLabel.text = String(viewModel.produceRandomNumber())
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
