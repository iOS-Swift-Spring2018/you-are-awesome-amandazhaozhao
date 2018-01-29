//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Amanda Zhao on 1/22/18.
//  Copyright © 2018 Zhao. All rights reserved.
//

import UIKit
import AVFoundation
//important to import foundations needed ^^^ for audio

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    //for showing message number 1 on the first random time, use -1 for var index
    var imageNumber = -1
    var soundNumber = -1
    let numberOfImages = 9
    let numberOfSounds = 4
    
    
    //Code below executes when the app's view first loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func playSound(soundName: String) {
                //Can we load in the file soundName?
                if let sound = NSDataAsset(name: soundName) {
                    //check if sound.data is a sound file
                    do {
                        try awesomePlayer = AVAudioPlayer(data: sound.data)
                        awesomePlayer.play()
                    } catch {
                        //if sound.data is not a valid audio file
                        print("ERROR: data in \(soundName) couldn't be played as a sound.")
                    }
        
                } else {
                    //if reading in the NSDataAsset didn't work, tell the user / report the error.
                    print("ERROR: file \(soundName) didn't load")
                }
        
    }
    
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex = -1
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(maxValue.count)))
        } while lastNumber == newIndex
        return newIndex
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Fantastic!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "When the Genuis Bar needs help, they call you!",
                        "You Brighten My Day!",
                        "You Are Da Bomb!",
                        "I can't wait to use your app!",
                        "Fabulous? That's You!"]
        
        
        // Show a message
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //Show an Image
        awesomeImage.isHidden = false
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(numberOfImages)))
        } while imageNumber == newIndex
        
        imageNumber = nonRepeatingRandom(lastNumber: imageNumber, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named: "image\(imageNumber)")
        
        
        //Get a random number to use in our soundName file

        soundNumber = nonRepeatingRandom(lastNumber: soundNumber, maxValue: numberOfSounds)
        
        //Play a Sound
        let soundName = "sound\(soundNumber)"
        playSound(soundName: soundName)
        
//        //Can we load in the file soundName?
//        if let sound = NSDataAsset(name: soundName) {
//            //check if sound.data is a sound file
//            do {
//                try awesomePlayer = AVAudioPlayer(data: sound.data)
//                awesomePlayer.play()
//            } catch {
//                //if sound.data is not a valid audio file
//                print("ERROR: data in \(soundName) couldn't be played as a sound.")
//            }
//
//        } else {
//            //if reading in the NSDataAsset didn't work, tell the user / report the error.
//            print("ERROR: file \(soundName) didn't load")
//        }
//
////        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
////        messageLabel.text = messages[randomIndex]
//
//
////        messageLabel.text = messages[index]
////        index = index + 1
////
////            if index == messages.count {
////                index = 0
////        }
////
////        //or index += 1, which is the same thing as the above
////
//////        let message1 = "You Are Da Bomb!"
//////        let message2 = "You Are Great!!"
//////        let message3 = "You Are Amazing!!!"
//////
//////        if messageLabel.text == message1 {
//////            messageLabel.text = message2
//////        } else if messageLabel.text == message2 {
//////            messageLabel.text = message3
//////        } else {
//////            messageLabel.text = message1
//////        }
    }
}

