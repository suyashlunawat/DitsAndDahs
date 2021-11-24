//
//  MorseApp.swift
//  Morse
//
//  Created by Francesco on 11/11/21.
//

import SwiftUI

@main
struct MorseApp: App {
   
    
    
    
    @StateObject var foca : duck = duck()
    
    
    var body: some Scene {
        WindowGroup {
            MainView().environmentObject(foca)
        }
    }
}

