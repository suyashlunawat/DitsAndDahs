//
//  LettersAndMorse.swift
//  LandScapeView
//
//  Created by Gian Marco Fantini on 16/11/21.
//

import Foundation
import SwiftUI

struct LettersToMorse {
    
    var translation: [String : String] = [
    "A" : "·-",
    "B" : "-···",
    "C" : "-·-·",
    "D" : "-··",
    "E" : "·",
    "F" :"··-·",
    "G" : "--·",
    "H" : "····",
    "I" : "··",
    "J" : "·---",
    "K" : "-·-",
    "L" : "·-··",
    "M" : "--",
    "N" : "-·",
    "O" : "---",
    "P" : "·--·",
    "Q" : "--·-",
    "R" : "·-·",
    "S" : "···",
    "T" : "-",
    "U" : "··-",
    "V" : "···-",
    "W" : "·--",
    "X" : "-··-",
    "Y" : "-·--",
    "Z" : "--··",
    " " : " / ",
    "0" : "-----",
    "1" : "·----",
    "2" : "··---",
    "3" : "···--",
    "4" : "····-",
    "5" : "·····",
    "6" : "-····",
    "7" : "--···",
    "8" : "---··",
    "9" : "----·"
    ]
}



var strutturaDati = LettersToMorse()

stringaUtente

traduzione = strutturaDati.translation[stringaUtente[0]]
