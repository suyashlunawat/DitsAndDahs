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
            TranslateView()
                .tabItem{
                    Label("Practice", systemImage: "book.closed.fill")
                }
            
            PracticeViewMain()
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
