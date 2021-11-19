//
//  aCard.swift
//  DotsAndLines
//
//  Created by Suyash Lunawat on 18/11/21.
//

import SwiftUI

struct aCard: View {
    var cardText: String
    var body: some View {
        ZStack{
            HStack {
                Spacer()
                Text("\(cardText)")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
            }
            .background(RoundedRectangle(cornerRadius: 10))
            .padding(.all, 6.0)
            HStack {
                Image(systemName: "hand.tap.fill")
                    .foregroundColor(.white)
                    .padding(.top, 30.0)
                    .padding(.leading, 320.0)
            }
        }
    }
}


struct aCard_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            aCard(cardText: "Ciao")
            aCard(cardText: "Ciao")
        }
    }
}
