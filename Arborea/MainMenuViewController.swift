//
//  MainMenuViewController.swift
//  Arborea
//
//  Created by 王嘉宁 on 2019/3/26.
//  Copyright © 2019 Johnny. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var randomNumberInRangeButton: UIButton!
    @IBOutlet weak var randomListButton: UIButton!
    
    lazy var mainMenuOptionArray: Array<UIViewController> = {
        let randomNumberInRangeViewController = RandomNumberInRangeViewController()
        let randomListViewController = RandomListListViewController()
        let option: Array<UIViewController> = [randomNumberInRangeViewController, randomListViewController]
        return option
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.randomNumberInRangeButton.addTarget(self, action: #selector(openRandomNumberInRangeViewController), for: UIControl.Event.touchUpInside)
        self.randomListButton.addTarget(self, action: #selector(openRandomListViewController), for: UIControl.Event.touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.view.becomeFirstResponder()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.view.resignFirstResponder()
    }
    
    @objc private func openRandomNumberInRangeViewController() {
        let randomNumberInRangeViewController = RandomNumberInRangeViewController()
        self.navigationController?.pushViewController(randomNumberInRangeViewController, animated: true)
    }
    
    @objc private func openRandomListViewController() {
        let randomListViewController = RandomListListViewController()
        self.navigationController?.pushViewController(randomListViewController, animated: true)
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == UIEvent.EventSubtype.motionShake {
            self.navigationController?.pushViewController(self.mainMenuOptionArray[PublicToolBox.getRandomNumber(maxIndex: 1)], animated: true)
        }
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
