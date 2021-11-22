//
//  ContentView.swift
//  Shared
//
//  Created by Giuseppe Capozzi on 15/11/21.
//

import SwiftUI


struct LandscapeLetterLearningView: View {
    
    @State var value : Int
    
    init(with value: Int) {
        self.value = value
    }
    
    var letters : [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"]
    
    var morse : [String] = ["·-","-···","-·-·","-··","·","··-·",
                            "--·","····","··","·---","-·-" ,"·-··","--","-·","---","·--·","--·-","·-·","···","-","··-","···-","·--","-··-","-·--","--··","·----","··---","···--","····-","·····","-····","--···","---··","----·","-----"]
    
     func increment(){
        value = (value + 1) % letters.count
    }
    
     func decrement(){
         if value == 0 {
             value = 35
         }
         else {value = (value - 1)}
         
        
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
                
                
            }
            .padding()
        }.padding()
        .background(Color.black).position(.init(x: 387, y: 195))
        //.padding()
        
    }
}

    








@available(iOS 15.0, *)
struct LandscapeLetterLearningView_Previews: PreviewProvider {

    @available(iOS 15.0, *)
    static var previews: some View {
       

        if #available(iOS 15.0, *) {
            LandscapeLetterLearningView(with:2)
                .previewInterfaceOrientation(.landscapeRight)
        } else {
            // Fallback on earlier versions
        }
              
    
    }
}








