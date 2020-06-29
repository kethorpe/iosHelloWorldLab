//
//  ViewController.swift
//  HelloWorldTutorial
//
//  Created by Ted - Legal name Kevin Thorpe on 6/11/20.
//  Copyright © 2020 Ted Thorpe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var nightMode = false
    var headerColor = UIColor.black
    
    @IBAction func changeBackground(_ sender: Any) {
        let everything = view.subviews
        nightMode = !nightMode
        
        if nightMode {
            view.backgroundColor = UIColor.darkGray
            headerColor = UIColor.white
        }
        else {
            view.backgroundColor = UIColor.white
            headerColor = UIColor.black
        }
        
        for eachView in everything {
            if eachView is UILabel {
                let currentLabel = eachView as! UILabel
                currentLabel.textColor = headerColor
            }
        }
    }
    
    @IBAction func HelloWorldButton(_ sender: UIButton) {
        let alertController = UIAlertController(
            title: "Hello World",
            message: "This is my app",
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

