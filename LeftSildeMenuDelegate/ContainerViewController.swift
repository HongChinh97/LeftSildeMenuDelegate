//
//  ViewController.swift
//  LeftSildeMenuDelegate
//
//  Created by admin on 11/14/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
//lam bong cho slide bang alpha trong story board
class ContainerViewController: UIViewController, MasterViewControllerDelegate {
    func openSlideMenu() {
        isSlideMenuOpen = !isSlideMenuOpen
    }
    
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var coverButton: UIButton!
    
    var masterVC: MasterViewController?
    var leftSlideMenuVC: LeftSlideMenuController?
    
    
    var isSlideMenuOpen: Bool = false {
        didSet {
            if isSlideMenuOpen {
                print(isSlideMenuOpen)
                leadingC.constant = 0
                coverButton.isHidden = false
            } else {
                print(isSlideMenuOpen)
                //cho slide khi moi bat dau an vao ben trong
                leadingC.constant = -(UIScreen.main.bounds.width) * 2/3
                coverButton.isHidden = true
            }
            //thoi gian hoan an vao ben trong
            UIView.animate(withDuration: 0.35) {
                self.view.layoutIfNeeded()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        isSlideMenuOpen = false
        masterVC?.delegate = self
        leftSlideMenuVC?.delegate = masterVC
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        openSlideMenu()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier! {
        case "masterViewController":
            if let navigation = segue.destination as? UINavigationController {
                masterVC = navigation.topViewController as? MasterViewController
            }
        case "leftSlideMenu":
            leftSlideMenuVC = segue.destination as? LeftSlideMenuController
        default:
            break
        }
    }

}

