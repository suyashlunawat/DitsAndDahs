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
            PracticeViewMain()
                .tabItem{
                    Label("Learning", systemImage: "book.closed.fill")
                }
            
            TranslateView()
                .tabItem{
                    Label("Practice", systemImage: "message")
                }
        }
            
    }
}

struct TranslateView: View {
    var body: some View {
        Text("Translate")
            .padding()
            
    }
}




struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
//message
