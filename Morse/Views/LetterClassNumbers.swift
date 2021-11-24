//
//  LetterClassNumbers.swift
//  Morse
//
//  Created by Giuseppe Capozzi on 23/11/21.
//

import SwiftUI

struct LetterClassNumbers: View {
    
    
    @EnvironmentObject var cats : duck
    
    
    private var columns: [GridItem] = [
            GridItem(.fixed(100), spacing: 80),
            GridItem(.fixed(100), spacing: 80)
        ]
    
    var body: some View {
        
        ScrollView{
        LazyVGrid(columns: columns){
            ForEach(cats.hexCoreNumbers){cat in
                LetterView(appLet: cat)
            }
        }
        }
    }
}

struct LetterClassNumbers_Previews: PreviewProvider {
    
    static var previews: some View {
        LetterClassNumbers().environmentObject(duck()).previewInterfaceOrientation(.landscapeLeft)
    }
}
