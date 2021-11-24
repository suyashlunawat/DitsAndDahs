//
//  OrientationViewNumbers.swift
//  Morse
//
//  Created by Giuseppe Capozzi on 23/11/21.
//

import SwiftUI

import SwiftUI

// An example view to demonstrate the solution
struct OrientationViewNumbers: View {
    @Environment(\.horizontalSizeClass) var hSizeClass
    @Environment(\.verticalSizeClass) var vSizeClass
    
    var body: some View {
        
            if hSizeClass == .compact && vSizeClass == .regular {
                
                LetterClassNumbers()
                
            } else {
                
                LandscapeLettersAndNumbersLearningView(with: 26,to:36)
                
            }
        }
    }




struct OrientationViewNumbers_Previews: PreviewProvider {
    static var previews: some View {
        OrientationViewNumbers()
    }
}
