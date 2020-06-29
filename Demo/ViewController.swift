//
//  ViewController.swift
//  Demo
//
//  Created by Ted - Legal name Kevin Thorpe on 6/28/20.
//  Copyright © 2020 Ted Thorpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nightMode = false
    
    // "Outlet" is a reference to something in the storyboard and is used to change something in the UI
    // "weak" variables mean that the storyboard is in charge of instantiating this UI element not the Controller
    @IBOutlet weak var myAppLabel: UILabel!
    
    // "Action" is an event triggered by something in your storyboard to cause a method in your code
    @IBAction func toggleNightMode(_ sender: Any) {
        nightMode = !nightMode
        
        if nightMode {
            view.backgroundColor = UIColor.darkGray
            myAppLabel.textColor = UIColor.white
        } else {
            view.backgroundColor = UIColor.white
            myAppLabel.textColor = UIColor.black
        }
    }
    
    // "IB" stands for "Interface Builder" and lets us know this method is referencing something in the UI
    @IBAction func helloWorldClick(_ sender: Any) {
        let alertController = UIAlertController(
            title: "Hello World",
            message: "This is my Application",
            preferredStyle: UIAlertController.Style.alert
        )
        alertController.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.default,
                handler: nil
            )
        )
        
        present(
            alertController,
            animated: true,
            completion: nil
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

