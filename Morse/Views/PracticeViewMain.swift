//
//  PracticeViewMain.swift
//  Morse
//
//  Created by Francesco on 17/11/21.
//

import SwiftUI

struct PracticeViewMainWithTitle : View {
    
@State var showInfoInstructionsModalView: Bool = false
    
    var body: some View{
        NavigationView {
            
            PracticeViewMain()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        HStack {
                            Text("Learning")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                            
                            Button {
                                showInfoInstructionsModalView = true
                            } label: {
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color.black)
                            } .sheet(isPresented: $showInfoInstructionsModalView) {
                                if #available(iOS 15.0, *) {
                                    InstructionsView()
                                } else {
                                    // Fallback on earlier versions
                                }}
                            
                        }
                        
                    }
                }
        }
        
    }
    
    
}

struct PracticeViewMain: View {
    var body: some View {
        
        VStack{
        
        CardView()
                .padding()
            
        CardView()
            
        }
    }
}

struct PracticeViewMain_Previews: PreviewProvider {
    static var previews: some View {
        PracticeViewMainWithTitle()
    }
}
