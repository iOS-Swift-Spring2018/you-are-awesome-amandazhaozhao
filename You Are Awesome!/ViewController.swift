//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Amanda Zhao on 1/22/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
 
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "When the Genuis Bar needs help, they call you!",
                        "You Brighten My Day!"]
        
        var index = 0
        
        messageLabel.text = messages[index]
        index = index + 1
        
        //or index += 1, which is the same thing as the above
        
//        let message1 = "You Are Da Bomb!"
//        let message2 = "You Are Great!!"
//        let message3 = "You Are Amazing!!!"
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }
}

