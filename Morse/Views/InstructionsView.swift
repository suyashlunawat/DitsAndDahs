//
//  ContentView.swift
//  DotsAndLines
//
//  Created by Suyash Lunawat on 15/11/21.
//

import SwiftUI
import AVFoundation



struct InstructionsView: View {
    @State var isShowinginfo1: Bool = false
    @State var isShowinginfo2: Bool = false
    @State var isShowinginfo3: Bool = false
    @State var isShowinginfo4: Bool = false
    @State var isShowinginfo5: Bool = false
    @State var audioPlayer: AVAudioPlayer?
    
    
    
    
    var body: some View {
        
        VStack {
            VStack(spacing:1) {
                Text("Instructions")
                    .font(.system(size: 60))
                    .fontWeight(.semibold)
                    .padding()
                
                
                aCard(cardText: "The length of a dot is 1 unit")
                    
                    .onTapGesture {
                        
                       
                        
                       withAnimation {
                            
                            isShowinginfo2 = false
                            isShowinginfo3 = false
                            isShowinginfo4 = false
                            isShowinginfo5 = false
                            isShowinginfo1 = true
                        }
                        
                        playSound(sound:"Dot", type: "mp3")
                        
                    }
                
                
                if isShowinginfo1 {
                    anInformation(topText: "Here is an example of the letter “E” which is represented by a dot", centreText: " E", morseLettering: "·", bottomText: "Notice the length of that sound/vibration")
                        .onTapGesture {
                            withAnimation {
                                isShowinginfo1 = false
                            }
                        }
                }
                
                aCard(cardText: "The length of a line is 3 units")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo2 = true
                            isShowinginfo3 = false
                            isShowinginfo4 = false
                            isShowinginfo5 = false
                            isShowinginfo1 = false

                        }
                        
                        playSound(sound:"Line", type: "mp3")

                    }

                if isShowinginfo2 {
                anInformation(topText: "Here is an example of the letter “T” which is represented by a line", centreText: " T", morseLettering: "-", bottomText: "Notice the length of that sound/vibration")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo2 = false
                        }
                    }
            }
                aCard(cardText: "The space between parts of the same letter is 1 unit")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo2 = false
                            isShowinginfo3 = true
                            isShowinginfo4 = false
                            isShowinginfo5 = false
                            isShowinginfo1 = false

                        }

                    }

                if isShowinginfo3 {
                anInformation(topText: "Here is an example of the letter “A” which is dot and a line", centreText: "A", morseLettering: "·-", bottomText: "Notice the pause between two sounds")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo3 = false
                        }
                    }
            }
                aCard(cardText: "The space between letters is 3 units")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo2 = false
                            isShowinginfo3 = false
                            isShowinginfo4 = true
                            isShowinginfo5 = false
                            isShowinginfo1 = false

                        }

                    }

                if isShowinginfo4 {
                anInformation(topText: "Here is an example of the word “EAT”", centreText: "E   A  T", morseLettering: " · ·- -", bottomText: "Notice the pause between two letters")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo4 = false
                        }
                    }
            }
                aCard(cardText: "The space between words is 7 units")
                    .onTapGesture {
                        withAnimation {
                            isShowinginfo2 = false
                            isShowinginfo3 = false
                            isShowinginfo4 = false
                            isShowinginfo5 = true
                            isShowinginfo1 = false

                        }

                    }

//
                
        }
            if isShowinginfo5 {
                           anInformation(topText: "Here is an example of the words “EAT AT” said together”", centreText: "E A T    A T", morseLettering: "· ·- -  ·- -", bottomText: "Notice the pause between two letters")
                               .onTapGesture {
                                   withAnimation {
                                       isShowinginfo5 = false
                                   }
                               }
                       }
//        .padding()
        Spacer()
        
    }
        .padding()
}
    
    func playSound(sound: String, type: String) {
          if let path = Bundle.main.path(forResource: sound, ofType: type) {
              do {
                  audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                  audioPlayer?.play()
              } catch {
                  print("ERROR")
              }
          }
      }
}
//
//
//
//
//
//
//
//

struct InstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionsView()
    }
}
