//
//  CardView.swift
//  Morse
//
//  Created by Francesco on 15/11/21.
//

import SwiftUI


struct CardView: View {
    
    @State private var tabBar: UITabBar! = nil
    
    @EnvironmentObject var cats : duck
    
    @State var isLinkActive = false
    
    static let grayCustom = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
    
    static let grayPoint = UnitPoint(x: 0.5, y: 0.65)
    
    var cardName : String
    var cardDescription : String
    var cardImage : String
    
    
    @State var letters : Bool
    
    init(cardName: String, cardDescription: String, cardImage : String, letters: Bool){
        self.cardName = cardName
        self.cardDescription = cardDescription
        self.cardImage = cardImage
        self.letters = letters
        
    }
    
    var body: some View {

        NavigationLink(destination: OrientationView(letters: .constant(letters)).onAppear { self.tabBar.isHidden = true }     // !!
                        .onDisappear { self.tabBar.isHidden = false },isActive: $isLinkActive){
        
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
        
            Image(cardImage)
                .offset(x: 0, y: -45)
            
            Text(cardName)
                .font(Font.custom("SF Pro", size: 20.0))
                .fontWeight(.bold)
                .font(.system(size: 24.0))
                .offset(x: -90, y: 50)
                .colorInvert()
            
            Text(cardDescription)
                .offset(x: 0, y: 90)
                .font(.system(size: 18.0))
                .colorInvert()
            
            

                
            Button(action: {
               self.isLinkActive = true
            }) {
                
                    Text("")
                       
              
            }
           }

          
        
            
        }
        .frame(width: 331, height: 239)
       .background(TabBarAccessor { tabbar in   // << here !!
       self.tabBar = tabbar
   })
        }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardName: "LETTERS", cardDescription: "Use this section to get familiar how letters are written in morse ", cardImage: "Letter", letters : true).environmentObject(duck())
        
    }
}




