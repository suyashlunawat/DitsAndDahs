//
//  ContentView.swift
//  Morse
//
//  Created by Francesco on 11/11/21.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        
        TabView{
            PracticeViewMainWithTitle()
                .tabItem{
                    Label("Learning", systemImage: "book.closed.fill")
                }
            
            TranslateViewWithTitle()
                .tabItem{
                    Label("Translate", systemImage: "message")
                }
        }.accentColor(.black)
            
    }
}

/*struct TranslateView: View {
    var body: some View {
        Text("Translate")
            .padding()
            
    }
} */




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
//message
