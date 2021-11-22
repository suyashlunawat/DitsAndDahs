//
//  LetterClass.swift
//  Morse
//
//  Created by Francesco on 22/11/21.
//

import SwiftUI

struct LetterClass: View {
    
    @EnvironmentObject var cats : duck
    
    private var columns: [GridItem] = [
            GridItem(.fixed(100), spacing: 80),
            GridItem(.fixed(100), spacing: 80)
        ]
    
    var body: some View {
        
        ScrollView{
        LazyVGrid(columns: columns){
            ForEach(cats.hexCore){cat in
                LetterView(appLet: cat)
            }
        }
        }
    }
}

struct LetterClass_Previews: PreviewProvider {
    static var previews: some View {
        LetterClass()
    }
}
