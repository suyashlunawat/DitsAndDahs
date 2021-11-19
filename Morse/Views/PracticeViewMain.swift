//
//  PracticeViewMain.swift
//  Morse
//
//  Created by Francesco on 17/11/21.
//

import SwiftUI

struct PracticeViewMainWithTitle : View {
    
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
                                print("Instructions")
                            } label: {
                                Image(systemName: "info.circle")
                                    .foregroundColor(Color.black)
                            }
                            
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
