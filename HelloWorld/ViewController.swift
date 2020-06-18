//
//  ViewController.swift
//  HelloWorld
//
//  Created by Sriya Madapusi Vasudevan on 6/17/20.
//  Copyright © 2020 Sriya Madapusi Vasudevan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let emojiDic = ["👾": "Alien Monster", "👻": "Ghost", "🤓": "Nerdy", "🤖": "Robot"]
        
        let selectedButton = sender
        
        if let emojiOnButton = selectedButton.titleLabel?.text {
            let meaning = emojiDic[emojiOnButton]
            if let meaning = meaning {
                let alertController = UIAlertController(title: "Meaning of emoji", message: meaning, preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                present(alertController, animated: true, completion: nil)
            }
        }
    }

}

