//
//  LetterView.swift
//  Morse
//
//  Created by Francesco on 17/11/21.
//

import SwiftUI

import AVFoundation

struct LetterView: View {
    
    @State var audioPlayerLetterF: AVAudioPlayer?
    
//    let dictionary=Dictionary()
//    var lettera:String
//    var morse:String
//    init(lettera: String, morse: String){
//        self.lettera=lettera
//        self.morse=morse
//    }
    var appLet: LetterAndMorse

    var body: some View {
        
        
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(Color.black)
            
            VStack(spacing:-30){
                Text(appLet.lettera)
                    .fontWeight(.bold)
                    .font(.system(size: 50.0))
                    .colorInvert()
                
                Text(appLet.morse)
                    .fontWeight(.bold)
                    .font(.system(size: 75.0))
                    .colorInvert()
            }        .onTapGesture {
                lettersSound(morse: appLet.morse)
            }
        }
    
        
        .frame(width: 166, height: 166)
        
        
    }
    
    func playSound(sound: String, type: String) {
          if let path = Bundle.main.path(forResource: sound, ofType: type) {
              do {
                  audioPlayerLetterF = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                  audioPlayerLetterF?.play()
              } catch {
                  print("ERROR")
              }
          }
      }
    
    func lettersSound(morse: String){
        
        
        
        
        
        
        for (index, char) in morse.enumerated() {
            
            
            
           if index != 0{
            playSound(sound: "Silence01", type: "mp3")
               usleep(100000)
            }
           if char == "-"{
               playSound(sound: "Line", type: "mp3")
               usleep(300000)
            }

            else if char == "·"{
                playSound(sound: "Dot", type : "mp3")
                usleep(100000)
            }
        }
    }
}

//struct LetterView_Previews: PreviewProvider {
//    static var previews: some View {
//        LetterView()
//    }
//}
