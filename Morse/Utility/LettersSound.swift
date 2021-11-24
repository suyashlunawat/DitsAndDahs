//
//  LettersSound.swift
//  Morse
//
//  Created by Giuseppe Capozzi on 24/11/21.
//


import AVFoundation



func playSound(sound: String, type: String) {
    var audioPlayer: AVAudioPlayer?
      if let path = Bundle.main.path(forResource: sound, ofType: type) {
          do {
              audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
              audioPlayer?.play()
          } catch {
              print("ERROR")
          }
      }
  }


func lettersSound(morse: String){
    
    for symbol in morse {
        
        //playSound(sound: "Silence01", type: "mp3")
        if symbol == "-"{
            playSound(sound: "Line", type: "mp3")
            }
        
        else {
            playSound(sound: "Dot", type : "mp3")
        }
    }
}

