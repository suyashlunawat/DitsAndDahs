//
//  OrientationView.swift
//  Morse
//
//  Created by Giuseppe Capozzi on 23/11/21.
//

import SwiftUI

struct OrientationView: View {
    
    @Binding  var letters : Bool
    
    var body: some View {
        if letters {
            OrientationViewLetters()
        }
        else {OrientationViewNumbers()}
    }
}

struct OrientationView_Previews: PreviewProvider {
    static var previews: some View {
        OrientationView(letters: .constant(true))
    }
}
