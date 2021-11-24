//
//  PracticeViewMain.swift
//  Morse
//
//  Created by Francesco on 17/11/21.
//

import SwiftUI

struct LearningViewMain : View {
    
    @State var showInfoInstructionsModalView: Bool = false
    
    
    var body: some View {
        NavigationView {
            CardsView()
            
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            showInfoInstructionsModalView = true
                        }, label: {
                            Label("Info", systemImage: "info.circle")
                                .font(.title2)
                        }).sheet(isPresented: $showInfoInstructionsModalView){
                            if #available(iOS 15.0, *) {
                                InstructionsView()
                            } else {
                                // Fallback on earlier versions
                            }
                        }
                    }
                }
            
                .navigationTitle("Learning")
        }
    }
    
    
    
    
    
}

struct CardsView : View {
    
    var body: some View {
        VStack{
            CardView(cardName: "LETTERS", cardDescription: "Use this section to get familiar how letters are written in morse ", cardImage: "Letter", letters : true).padding()
            
            CardView(cardName: "NUMBERS", cardDescription: "Use this section to get familiar how numbers are written in morse ", cardImage: "Letter", letters : false)
        }
    }
}

struct LearningViewMain_Previews: PreviewProvider {
    static var previews: some View {
        LearningViewMain().environmentObject(duck())
    }
}
