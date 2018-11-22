//
//  LeftSlideMenuController.swift
//  LeftSildeMenuDelegate
//
//  Created by admin on 11/14/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

protocol LeftSlideMenuControllerDelegate: class {
    func passData(data: String)
}
class LeftSlideMenuController: UIViewController {

    weak var delegate: LeftSlideMenuControllerDelegate?
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendingData(_ sender: UIButton) {
        delegate?.passData(data: textField.text!)
    }
    

}
