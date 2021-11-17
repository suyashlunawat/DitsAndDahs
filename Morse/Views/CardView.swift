//
//  CardView.swift
//  Morse
//
//  Created by Francesco on 15/11/21.
//

import SwiftUI

struct CardView: View {
    
    static let grayCustom = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    
    static let grayPoint = UnitPoint(x: 0.5, y: 0.65)
    
    var body: some View {
        
        
        
        ZStack {
            
            
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(
                    LinearGradient(
                        gradient: Gradient(stops: [
                            Gradient.Stop(color: Color(CardView.grayCustom), location: 0.5),
                            Gradient.Stop(color: .black, location: 0.5)
                        ]),
                        startPoint: CardView.grayPoint,
                        endPoint: CardView.grayPoint))
        
            Image("Letter")
                .offset(x: 0, y: -45)
            
            Text("LETTERS")
//                .font(Font.custom("SF Pro", size: 20.0))
                .fontWeight(.bold)
                .font(.system(size: 24.0))
                .offset(x: -90, y: 50)
                .colorInvert()
            
            Text("Use this section to get familiar how letters are written in morse ")
                .offset(x: 0, y: 90)
                .font(.system(size: 18.0))
                .colorInvert()
            
            Button(action: {print("lol")}) {
                Text("OPEN      ")
                    .background(.white)
                    
                    .foregroundColor(.black)
                    .font(.system(size: 13.0))

                    .clipShape(RoundedRectangle(cornerRadius: 10.5, style: .continuous))
                    .frame(width: 50, height: 21)
            }.offset(x: 110, y: 55)

        }
        .frame(width: 331, height: 239)
            
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
        
    }
}
