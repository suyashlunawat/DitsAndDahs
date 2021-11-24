//
//  LetterOrientationView.swift
//  Morse
//
//  Created by Giuseppe Capozzi on 23/11/21.
//

import SwiftUI

// An example view to demonstrate the solution
struct OrientationViewLetters: View {
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    
    var body: some View {
        
            if hSizeClass == .compact && vSizeClass == .regular {
                
                LetterClassLetters()
                
            } else {
                
                LandscapeLettersAndNumbersLearningView(with: 0,to:26)
                
            }
        }
    }




struct OrientationViewLetters_Previews: PreviewProvider {
    static var previews: some View {
        OrientationViewLetters()
    }
}










