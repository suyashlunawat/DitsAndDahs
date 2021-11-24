//
//  ContentView.swift
//  Shared
//
//  Created by Giuseppe Capozzi on 15/11/21.
//

import SwiftUI
import AVFoundation


struct LandscapeLettersAndNumbersLearningView: View {
    
    @State var startValue : Int
    @State var endValue : Int
    @State var value : Int
    
    @State var audioPlayerLetter: AVAudioPlayer?
    
    
    init(with startValue: Int, to endValue : Int) {
        self.startValue = startValue
        self.endValue = endValue
        self.value = startValue
    }
    
    var letters : [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"]
    
    var morse : [String] = ["·-","-···","-·-·","-··","·","··-·",
                            "--·","····","··","·---","-·-" ,"·-··","--","-·","---","·--·","--·-","·-·","···","-","··-","···-","·--","-··-","-·--","--··","·----","··---","···--","····-","·····","-····","--···","---··","----·","-----"]
    
     func increment(){
         if value == endValue - 1{
             value = startValue
         }
         else{
             value = (value + 1)
         }
    }
    
     func decrement(){
         if value == startValue {
             value = endValue - 1
         }
         else {value = (value - 1)}
         
        
    }
    
    func playSound(sound: String, type: String) {
          if let path = Bundle.main.path(forResource: sound, ofType: type) {
              do {
                  audioPlayerLetter = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                  audioPlayerLetter?.play()
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
    
    var body: some View {
        
        
        
        HStack() {
            
            VStack() {
                Button {
                    decrement()
                }
            label: {
                Image(systemName: "chevron.up")
                    .resizable()
                
                .frame(width: 63, height: 48)
                    .foregroundColor(Color.white)
            }
                
                
                Text(letters[value])
                    .font(.system(size: 200))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    
                    .padding()
                
                Button {
                    increment()
                } label: {
                    Image(systemName:"chevron.down")
                        .resizable()
                        .frame(width: 63, height: 48)
                        .foregroundColor(Color.white)
                }
                
                

                
            } .frame(width: 220)
                .padding()
            
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 66)
                    .frame(width: 553, height: 301)
                    .foregroundColor(Color.white)
                    .border(Color.black)
                    .overlay(Text(morse[value])
                                .offset(x: 0, y: -20))
                    .font(.system(size: 250))
                    .overlay((Image(systemName: "hand.tap.fill" ).offset(x: 220, y: 100)))
                
                    .font(.system(size: 40))
                
                
            }.onTapGesture {
                
                lettersSound(morse: morse[value])
            }
            .padding()
        }.padding()
        .background(Color.black).position(.init(x: 387, y: 155))
        .padding()
        
    }
}

    








@available(iOS 15.0, *)
struct LandscapeLettersAndNumbersLearningView_Previews: PreviewProvider {

    @available(iOS 15.0, *)
    static var previews: some View {
       

        if #available(iOS 15.0, *) {
            LandscapeLettersAndNumbersLearningView(with:0,to:26)
                .previewInterfaceOrientation(.portrait)
        } else {
            // Fallback on earlier versions
        }
              
    
    }
}








