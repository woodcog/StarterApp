//
//  ViewController.swift
//  StarterApp
//
//  Created by Gill Woodcock on 06/07/2018.
//  Copyright © 2018 Gill Woodcock. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        // Initialize the dictionary
        var infoDict = ["Swift version": "Swift version: 4.0.3", "App version": "App version: 1.0"]
        
        // The sender is the button that is tapped by the user.
        // Here we store the sender in the selectedButton constant
        let selectedButton = sender
        
        // Get the text from the title label of the selected button
        if let textToLookup = selectedButton.titleLabel?.text {
            
            // Get the detail for the text from the dictionary
            let detail = infoDict[textToLookup]
            
            // Display the detail in the alert message
            let alertController = UIAlertController(title: "Swift App Info", message: detail, preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        
    }

}

