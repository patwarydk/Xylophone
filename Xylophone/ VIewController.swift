//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
// audio toolbox
   // var player =  AVAudioPlayer()
    
//AVAudioPlayerDelegate
    var audioPlayer : AVAudioPlayer!
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
// AVFoundation
   // var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // AVAudioPlayerDelegate
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileName : soundArray[sender.tag - 1])
        
        /*
    // Using AVAFoundation
        let path = Bundle.main.path(forResource: "note1", ofType: "wav")
        do{
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path!))
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback, mode: AVAudioSession.Mode.default, options: [])
            player.prepareToPlay()
            player.play()
    }catch let error as Error{
            print(error)
        }
 */
/*
    // Using AVAFoundation
    
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do{
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player  else {
                return
            }
            player.prepareToPlay()
            player.play()
        }catch let error as Error{
            print(error)
        }
        
*/
/*
       // Using AVAFoundation
         
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        do{
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        }catch let error as Error{
            print("Sorry mohsin")
        }
*/
        

 // Using AudioToolbox
 /*
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav"){
            var mySound:SystemSoundID = 0
           AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            AudioServicesPlaySystemSound(mySound)
            print(mySound)
        }
*/
        
        
        
    }
    func playSound(soundFileName : String){
        let soundUrl = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundUrl!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
}

