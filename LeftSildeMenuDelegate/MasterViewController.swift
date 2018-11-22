//
//  MasterViewController.swift
//  LeftSildeMenuDelegate
//
//  Created by admin on 11/14/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
protocol MasterViewControllerDelegate: class {
    func openSlideMenu()
}

class MasterViewController: UIViewController, LeftSlideMenuControllerDelegate {
    func passData(data: String) {
        textName.text = data
        delegate?.openSlideMenu()
    }
    

    @IBOutlet weak var textName: UILabel!
    @IBOutlet weak var menuBtn: UIBarButtonItem!
    weak var delegate: MasterViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(_ sender: UIBarButtonItem) {
        delegate?.openSlideMenu()
    }
    

}
