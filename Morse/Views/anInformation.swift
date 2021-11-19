//
//  anInformation.swift
//  DotsAndLines
//
//  Created by Suyash Lunawat on 18/11/21.
//

import SwiftUI

struct anInformation: View {
    var topText: String
    var centreText: String
    var morseLettering: String
    var bottomText: String
    
    var body: some View {
        VStack{
        Text("\(topText)")
            .font(.system(size: 12))
            .padding()
        VStack{
            Text("\(centreText)")
                .font(.system(size: 60))
                .frame(width: 450, height: 50)
          
            Text("\(morseLettering)")
          .tracking(-6)
                .font(.system(size: 120))
                .frame(width: 450, height: 50 )
        
                
        HStack {
            Spacer()
            Text("\(bottomText)")
                .font(.system(size: 12))
                .multilineTextAlignment(.trailing)
                .padding()
        }
        }
        }
    }
}


struct anInformation_Previews: PreviewProvider {
    static var previews: some View {
        anInformation(topText: "Here is an example of the word “EAT”", centreText: "E A T  A T", morseLettering: "· ·- -", bottomText: "Notice the pause between two letters")
    }
}
